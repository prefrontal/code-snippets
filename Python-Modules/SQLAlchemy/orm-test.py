# import sqlalchemy

from sqlalchemy import create_engine
engine = create_engine('sqlite:///:memory:', echo=True)

from sqlalchemy.ext.declarative import declarative_base
Base = declarative_base()

from sqlalchemy import Column, Integer, String
class User(Base):
	__tablename__ = 'users'

	id = Column(Integer, primary_key=True)
	name = Column(String)
	fullname = Column(String)
	password = Column(String)

	def __repr__(self):
		return "<User(name='%s', fullname='%s', password='%s')>" % (
		self.name, self.fullname, self.password)

Base.metadata.create_all(engine)

# ------------------------------------------------------------------------

from sqlalchemy.orm import sessionmaker
Session = sessionmaker(bind=engine)
session = Session()

# To persist our User object, we add() it to our Session
ed_user = User(name='ed', fullname='Ed Jones', password='edspassword')
session.add(ed_user)

# Test that the object returned from query is the same as original
our_user = session.query(User).filter_by(name='ed').first()
print("Is the same user: ", ed_user is our_user)

# Add more users
session.add_all([
	User(name='wendy', fullname='Wendy Williams', password='foobar'),
	User(name='mary', fullname='Mary Contrary', password='xxg527'),
	User(name='fred', fullname='Fred Flinstone', password='blah')])

# Change original user's password
ed_user.password = 'f8s7ccs'

# See what objects are dirty and what new data is present
print(session.dirty)
print(session.new)

# Commit changes
session.commit()

