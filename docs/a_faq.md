# FAQ

## Frequently Asked Questions 

### What are native rollups?
Native rollups are an innovative scaling solution for Ethereum that integrate rollup functionality directly into the protocol. They leverage a dedicated `EXECUTE` precompile to expose the native L1 EVM execution engine to the application layer, allowing the verification of state transitions for batches of user transactions. In essence, native rollups act as “programmable execution shards” that not only simplify the development of rollup systems but also fully inherit Ethereum’s robust security model—making them “trustless rollups.”

### How do native rollups improve Ethereum scalability?

Native rollups enhance Ethereum scalability by:  

- **Reducing Overhead:** Offloading complex state transitions from the main EVM, thereby streamlining transaction processing.  

- **Increasing Throughput:** Utilizing a dedicated execution mechanism to process transactions faster.  

- **Lowering Latency:** Enabling near-real-time settlement and synchronous composability without the delays inherent in traditional rollup proving.  

- **Enhancing Efficiency:** Optimizing resource utilization across the network while maintaining a high level of operational simplicity.  


### What is the role of the execution precompile in native rollups?  

The `EXECUTE` precompile is a specialized component embedded in Ethereum’s protocol that:  

- **Optimizes State Transitions:** It verifies EVM state transitions for batches of transactions in a single call, drastically reducing the code complexity compared to traditional fraud proof games or SNARK circuits.  

- **Enables Inherited Security:** Since it is directly enforced by Layer 1 validators, it ensures that native rollups fully inherit Ethereum’s security, including its consensus and cryptographic guarantees.  

- **Simplifies Integration:** It allows for minimal native rollup implementations—often just a few lines of Solidity code—eliminating the need for ancillary infrastructure such as security councils or complex governance mechanisms.  


### How do native rollups interact with existing Layer 2 solutions?  

Native rollups are designed to complement and enhance the current Layer 2 ecosystem by:  

- **Facilitating Interoperability:** Offering a standardized, EVM-equivalent execution model that different Layer 2 systems can adopt.  

- **Reducing Complexity:** By handling both sequencing and execution natively, they remove the need for separate, often cumbersome, integration layers.  

- **Strengthening Security:** Their design enables them to fully inherit L1 security, making them a robust addition to existing L2 environments.  

### What are the technical challenges and risks associated with implementing native rollups?  

Some key challenges include:  

- **Protocol Changes:** Modifying the core Ethereum protocol requires consensus, coordination and extensive testing to ensure network stability.  

- **Complex Enforcement Mechanisms:** Whether through naive re-execution or optional SNARK-based verification, ensuring the correct operation of the `EXECUTE` precompile demands careful engineering.  

- **Integration with Offchain Proofs:** Balancing on-chain simplicity with offchain proof diversity introduces challenges in managing prover load and maintaining decentralized verification.  

- **Adoption Hurdles:** Shifting from established rollup models to a native execution paradigm may require significant community and developer education.  


### How will security be ensured during the development and deployment of native rollups?  

Security is paramount. Native rollups inherit the robust security and consensus mechanisms of Layer 1, meaning:  

- **Inherited Security:** All rollup operations benefit directly from Ethereum’s proven cryptographic guarantees.  

- **Rigorous Testing:** Extensive testnet deployments and continuous code reviews, supplemented by third-party audits, will help validate the `EXECUTE` precompile.  

- **Community Oversight:** As an open source initiative, broad community scrutiny and incremental rollouts ensure that any vulnerabilities are caught and addressed early.  

- **Incremental Deployment:** A phased approach—from research and proof of concept to mainnet integration—ensures that each new feature is thoroughly vetted.  


### What is the current roadmap or timeline for deploying native rollups?  

While the precise timeline is evolving, the general roadmap includes:  

- **Research & Proof of Concept:** Early-stage studies and small-scale implementations to validate the native rollup design.  

- **Testnet Deployments:** Rolling out native rollups on Ethereum testnets to gather feedback and refine both the `EXECUTE` precompile and rollup logic.  

- **Incremental Mainnet Integration:** Gradual deployment aligned with Ethereum’s protocol upgrade cycles, ensuring that new features are introduced safely.  

- **Milestone-Driven Releases:** Each release is tied to key design milestones—such as achieving EVM equivalence and synchronous composability—before moving to full mainnet adoption.  


### How can I contribute or get involved in the native rollups project?  

There are multiple ways to join the effort:  

- **Participate in Discussions:** Join [community calls](https://github.com/cspannos/Native-Rollup-PM/tree/main) and forums to exchange ideas and provide feedback on the design and implementation.  

- **Develop Documentation:** Help enhance technical guides, improve this FAQ, and produce research that helps explain the intricacies of native rollups.  

- **Write Code:** Contribute to proof-of-concept implementations, smart contract development, or improvements to the `EXECUTE` precompile.  

- **Spread Research:** Assist in disseminating the latest research findings and design updates through blogs, social media, or dedicated channels.  

Your contributions—whether technical, educational, or organizational—are vital to realizing a future where native rollups unlock full Ethereum L1 security and efficiency.  


### Where can I find more detailed documentation and research on native rollups?  

You can access in-depth resources at:  

- **Repositories:** [Explore code, meeting notes, and ongoing projects.](https://github.com/native-rollups)  

- **Documentation:** Visit this website for guides, whitepapers, and regularly updated FAQs.  

- **Research:** Read technical write-ups and academic papers that delve into the design and engineering behind native rollups.

### What future improvements or updates can we expect for native rollups?  

Looking ahead, native rollups are poised to offer:  

- **Expanding Interoperability:** Greater support for a diverse array of Layer 2 solutions and external systems.  

- **Optimized Performance:** Continued improvements in gas efficiency, throughput, and transaction latency.  

- **EVM Equivalence:** Ongoing alignment with Ethereum’s core upgrades, ensuring long-term compatibility without the need for separate governance.  

- **Lower SNARK Gas Costs:** Enhanced efficiency in verification processes, reducing the expense of onchain SNARK proof verification.  

- **Synchronous Composability:** Further refinements to enable near real-time settlement and composability across decentralized applications.  
  
Future updates will be driven by continuous innovation and collaboration within the Ethereum community and ecosystem, unlocking even more of the “superpowers” offered by native rollups.
