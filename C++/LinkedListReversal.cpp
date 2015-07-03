#include <iostream>

// Basic example in C++ of how to reverse a linked list in-place

// Node class to store data
class Node 
{
public:
    
    int     data;
    Node*   nextNode;
    
    Node (int value, Node* address)
    {
        data = value;
        nextNode = address;
    }
};

// Linked List class to contain Nodes
class LinkedList
{
private:
    
    Node*    headNode;
    
public:
    
    // Initialize new lists in an empty state with a NULL head node
    LinkedList()
    {
        headNode = NULL;    
    }
    
    // Check if the list is empty by checking the head node state
    bool IsEmpty ()
    {
        if (headNode == NULL)
            return true;
        else
            return false;
    }
    
    // Add a node at the end of the list with a specified value
    void Add (int value)
    {
        if (headNode == NULL)
            headNode = new Node (value, NULL);
        else
        {
            Node* n = headNode;
            while (n->nextNode != NULL)
                n = n->nextNode;
                
            n->nextNode = new Node (value, NULL);
        }
    }
    
    // Return the number of nodes in the list
    unsigned int Length ()
    {
        if (headNode == NULL)
            return 0;
        else if (headNode->nextNode == NULL)
            return 1;
            
        unsigned int length = 1;
        Node* n = headNode;
        
        while (n->nextNode != NULL)
        {
            n = n->nextNode;
            length++;
        }
        
        return length;
    }
    
    // Display the contents of the list nodes
    void Print ()
    {
        if (headNode == NULL)
            return;
            
        if (headNode == NULL)
            std::cout << headNode->data << std::endl;
        else
        {
            Node* n = headNode;
            while (n->nextNode != NULL)
            {
                std::cout << n->data << std::endl;
                n = n->nextNode;
            }
            
            std::cout << n->data << std::endl;
            std::cout << std::endl;
        }    
    }
    
    // Reverse the position of nodes in the list
    void Reverse ()
    {
        if ((headNode != NULL) and (headNode->nextNode != NULL))
        {
            Node* m = headNode;
            Node* n = headNode->nextNode;
            Node* t = NULL;
            
            if (n->nextNode != NULL)
                t = n->nextNode;
                
            headNode->nextNode = NULL;
            
            while (t->nextNode !=NULL)
            {
                n->nextNode = m;
                m = n;
                n = t;
                t = t->nextNode;
            }
            
            n->nextNode = m;
            headNode = t;
            t->nextNode = n;
        }
    }
};

int main (int argc, char *argv[]) 
{
    LinkedList myList;
    
    for (unsigned int i = 0; i < 30; i++)
        myList.Add (i);
       
    if (myList.IsEmpty())  // Sanity check
        return 1;
    
    std::cout << "List as originally defined:" << std::endl;
    myList.Print();
    
    std::cout << "Reversed list:" << std::endl;
    myList.Reverse();
    myList.Print();
    
    std::cout << "List length: " << myList.Length() << std::endl;
    std::cout << std::endl;
    
    return 0;
}
























