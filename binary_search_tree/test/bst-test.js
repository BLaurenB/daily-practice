const assert  = require('chai').assert
import Bst from './bst'

// test that a Node exists
describe("Class Node", function () {
  it("Can create an instance with valid data", function() {
    node = new Node(5)
    expect(node).to.be.an.instanceof(Node);
  })
})


// test the BST class and functions
describe("Class bST", function () {
  it("exists", function() {

  })

  it("Creates a root node when no node exists yet", function() {

  })


// test that calling the BST via bst.root returns a node as the root

// test that I can insert a new node to the right and left

// test that I can return the tree's contents as nested hashes.  Maybe later get fancy with ASCII art

// test that the insert function looks for the correct place to insert a value, and that it correctly shifts other nodes around if needed. If the value is already in the tree, it should print a message that the number has already been added

// write a function to display the depth of the tree via parent nodes (look up the actual terms)

// test that I can find an entry. Once found, the console should display its location - either the hash it belongs to, or it's succession of parent nodes to the root. Something like that.

//test that I can delete an entry (a node or a child). Make sure that other nodes are correctly re-organized.

})
