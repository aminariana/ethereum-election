pragma solidity ^0.4.17;

/**
 * The contractName contract does this and that...
 */
contract Election {
  // Read/write Candidates
  mapping(uint => Candidate) public candidates;

  // Store Candidates Count
  uint public candidatesCount;

  // Model a Candidate
  struct Candidate {
    uint id;
    string name;
    uint voteCount;
  }

  //constructor
  constructor () public {
    addCandidate("Candidate 1");
    addCandidate("Candidate 2");
  }

  function addCandidate (string _name) private {
    candidatesCount ++;
    candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
  }
}