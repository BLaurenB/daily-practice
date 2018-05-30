const assert  = require('chai').assert
const expect  = require('chai').expect
Node = require('../node')


// test that a Node exists
describe("Class Node", function () {
  it("Can create an instance with valid data", function() {
    let node = new Node(5)
    expect(node).to.be.an.instanceof(Node);
    expect(node.data).to.equal(5)
    expect(node.left).to.equal(null)
    expect(node.right).to.equal(null)
  })
})
