
# Monad and Monoid in Category Theory

## Monoid

A **monoid** is a set \( M \) equipped with:

1. A binary operation \( \cdot : M \times M \to M \)
2. An identity element \( e \in M \) such that for all \( a \in M \):
   \[
   e \cdot a = a \cdot e = a
   \]
3. Associativity: For all \( a, b, c \in M \):
   \[
   (a \cdot b) \cdot c = a \cdot (b \cdot c)
   \]

## Monad

A **monad** on a category \( \mathcal{C} \) consists of:

1. An endofunctor \( T : \mathcal{C} \to \mathcal{C} \)
2. A natural transformation \( \eta : \text{Id}_{\mathcal{C}} \Rightarrow T \)
3. A natural transformation \( \mu : T^2 \Rightarrow T \)

These satisfy the following laws:

1. Left Unit: \( \mu \circ T\eta = \text{id}_T \)
2. Right Unit: \( \mu \circ \eta_T = \text{id}_T \)
3. Associativity: \( \mu \circ T\mu = \mu \circ \mu_T \)
