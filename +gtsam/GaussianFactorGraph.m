%class GaussianFactorGraph, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianFactorGraph()
%GaussianFactorGraph(GaussianBayesNet bayesNet)
%GaussianFactorGraph(GaussianBayesTree bayesTree)
%
%-------Methods-------
%add(GaussianFactor factor) : returns void
%add(Vector b) : returns void
%add(size_t key1, Matrix A1, Vector b, Diagonal model) : returns void
%add(size_t key1, Matrix A1, size_t key2, Matrix A2, Vector b, Diagonal model) : returns void
%add(size_t key1, Matrix A1, size_t key2, Matrix A2, size_t key3, Matrix A3, Vector b, Diagonal model) : returns void
%at(size_t idx) : returns gtsam::GaussianFactor
%augmentedHessian() : returns Matrix
%augmentedHessian(Ordering ordering) : returns Matrix
%augmentedJacobian() : returns Matrix
%augmentedJacobian(Ordering ordering) : returns Matrix
%clone() : returns gtsam::GaussianFactorGraph
%eliminateMultifrontal() : returns gtsam::GaussianBayesTree
%eliminateMultifrontal(Ordering ordering) : returns gtsam::GaussianBayesTree
%eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam::GaussianBayesTree, gtsam::GaussianFactorGraph >
%eliminatePartialMultifrontal(KeyVector keys) : returns pair< gtsam::GaussianBayesTree, gtsam::GaussianFactorGraph >
%eliminatePartialSequential(Ordering ordering) : returns pair< gtsam::GaussianBayesNet, gtsam::GaussianFactorGraph >
%eliminatePartialSequential(KeyVector keys) : returns pair< gtsam::GaussianBayesNet, gtsam::GaussianFactorGraph >
%eliminateSequential() : returns gtsam::GaussianBayesNet
%eliminateSequential(Ordering ordering) : returns gtsam::GaussianBayesNet
%equals(GaussianFactorGraph lfgraph, double tol) : returns bool
%error(VectorValues c) : returns double
%exists(size_t idx) : returns bool
%gradient(VectorValues x0) : returns gtsam::VectorValues
%gradientAtZero() : returns gtsam::VectorValues
%hessian() : returns pair< Matrix, Vector >
%hessian(Ordering ordering) : returns pair< Matrix, Vector >
%jacobian() : returns pair< Matrix, Vector >
%jacobian(Ordering ordering) : returns pair< Matrix, Vector >
%keyVector() : returns gtsam::KeyVector
%keys() : returns gtsam::KeySet
%marginal(KeyVector key_vector) : returns gtsam::GaussianFactorGraph
%marginalMultifrontalBayesNet(Ordering ordering) : returns gtsam::GaussianBayesNet
%marginalMultifrontalBayesNet(KeyVector key_vector) : returns gtsam::GaussianBayesNet
%marginalMultifrontalBayesNet(Ordering ordering, Ordering marginalizedVariableOrdering) : returns gtsam::GaussianBayesNet
%marginalMultifrontalBayesNet(KeyVector key_vector, Ordering marginalizedVariableOrdering) : returns gtsam::GaussianBayesNet
%negate() : returns gtsam::GaussianFactorGraph
%optimize() : returns gtsam::VectorValues
%optimize(Ordering ordering) : returns gtsam::VectorValues
%optimizeGradientSearch() : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%printErrors(VectorValues c, string str, KeyFormatter keyFormatter) : returns void
%probPrime(VectorValues c) : returns double
%push_back(GaussianFactor factor) : returns void
%push_back(GaussianConditional conditional) : returns void
%push_back(GaussianFactorGraph graph) : returns void
%push_back(GaussianBayesNet bayesNet) : returns void
%push_back(GaussianBayesTree bayesTree) : returns void
%size() : returns size_t
%sparseJacobian_() : returns Matrix
%
classdef GaussianFactorGraph < handle
  properties
    ptr_gtsamGaussianFactorGraph = 0
  end
  methods
    function obj = GaussianFactorGraph(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1341, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1342);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianBayesNet')
        my_ptr = gtsam_wrapper(1343, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianBayesTree')
        my_ptr = gtsam_wrapper(1344, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.GaussianFactorGraph constructor');
      end
      obj.ptr_gtsamGaussianFactorGraph = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1345, obj.ptr_gtsamGaussianFactorGraph);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = add(this, varargin)
      % ADD usage: add(GaussianFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        gtsam_wrapper(1346, this, varargin{:});
        return
      end
      % ADD usage: add(Vector b) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},2)==1
        gtsam_wrapper(1347, this, varargin{:});
        return
      end
      % ADD usage: add(size_t key1, Matrix A1, Vector b, Diagonal model) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'gtsam.noiseModel.Diagonal')
        gtsam_wrapper(1348, this, varargin{:});
        return
      end
      % ADD usage: add(size_t key1, Matrix A1, size_t key2, Matrix A2, Vector b, Diagonal model) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 6 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'double') && size(varargin{5},2)==1 && isa(varargin{6},'gtsam.noiseModel.Diagonal')
        gtsam_wrapper(1349, this, varargin{:});
        return
      end
      % ADD usage: add(size_t key1, Matrix A1, size_t key2, Matrix A2, size_t key3, Matrix A3, Vector b, Diagonal model) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 8 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && isa(varargin{3},'numeric') && isa(varargin{4},'double') && isa(varargin{5},'numeric') && isa(varargin{6},'double') && isa(varargin{7},'double') && size(varargin{7},2)==1 && isa(varargin{8},'gtsam.noiseModel.Diagonal')
        gtsam_wrapper(1350, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.add');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.GaussianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1351, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.at');
    end

    function varargout = augmentedHessian(this, varargin)
      % AUGMENTEDHESSIAN usage: augmentedHessian() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1352, this, varargin{:});
        return
      end
      % AUGMENTEDHESSIAN usage: augmentedHessian(Ordering ordering) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1353, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.augmentedHessian');
    end

    function varargout = augmentedJacobian(this, varargin)
      % AUGMENTEDJACOBIAN usage: augmentedJacobian() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1354, this, varargin{:});
        return
      end
      % AUGMENTEDJACOBIAN usage: augmentedJacobian(Ordering ordering) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1355, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.augmentedJacobian');
    end

    function varargout = clone(this, varargin)
      % CLONE usage: clone() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1356, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.clone');
    end

    function varargout = eliminateMultifrontal(this, varargin)
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal() : returns gtsam.GaussianBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1357, this, varargin{:});
        return
      end
      % ELIMINATEMULTIFRONTAL usage: eliminateMultifrontal(Ordering ordering) : returns gtsam.GaussianBayesTree
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1358, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminateMultifrontal');
    end

    function varargout = eliminatePartialMultifrontal(this, varargin)
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(Ordering ordering) : returns pair< gtsam.GaussianBayesTree, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1359, this, varargin{:});
        return
      end
      % ELIMINATEPARTIALMULTIFRONTAL usage: eliminatePartialMultifrontal(KeyVector keys) : returns pair< gtsam.GaussianBayesTree, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1360, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminatePartialMultifrontal');
    end

    function varargout = eliminatePartialSequential(this, varargin)
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(Ordering ordering) : returns pair< gtsam.GaussianBayesNet, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1361, this, varargin{:});
        return
      end
      % ELIMINATEPARTIALSEQUENTIAL usage: eliminatePartialSequential(KeyVector keys) : returns pair< gtsam.GaussianBayesNet, gtsam.GaussianFactorGraph >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1362, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminatePartialSequential');
    end

    function varargout = eliminateSequential(this, varargin)
      % ELIMINATESEQUENTIAL usage: eliminateSequential() : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1363, this, varargin{:});
        return
      end
      % ELIMINATESEQUENTIAL usage: eliminateSequential(Ordering ordering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1364, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.eliminateSequential');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianFactorGraph lfgraph, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactorGraph') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1365, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1366, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.error');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t idx) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1367, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.exists');
    end

    function varargout = gradient(this, varargin)
      % GRADIENT usage: gradient(VectorValues x0) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1368, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.gradient');
    end

    function varargout = gradientAtZero(this, varargin)
      % GRADIENTATZERO usage: gradientAtZero() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1369, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.gradientAtZero');
    end

    function varargout = hessian(this, varargin)
      % HESSIAN usage: hessian() : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1370, this, varargin{:});
        return
      end
      % HESSIAN usage: hessian(Ordering ordering) : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1371, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.hessian');
    end

    function varargout = jacobian(this, varargin)
      % JACOBIAN usage: jacobian() : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1372, this, varargin{:});
        return
      end
      % JACOBIAN usage: jacobian(Ordering ordering) : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1373, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.jacobian');
    end

    function varargout = keyVector(this, varargin)
      % KEYVECTOR usage: keyVector() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1374, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.keyVector');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1375, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.keys');
    end

    function varargout = marginal(this, varargin)
      % MARGINAL usage: marginal(KeyVector key_vector) : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(1376, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.marginal');
    end

    function varargout = marginalMultifrontalBayesNet(this, varargin)
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(Ordering ordering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1377, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(KeyVector key_vector) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(1378, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(Ordering ordering, Ordering marginalizedVariableOrdering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Ordering') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1379, this, varargin{:});
        return
      end
      % MARGINALMULTIFRONTALBAYESNET usage: marginalMultifrontalBayesNet(KeyVector key_vector, Ordering marginalizedVariableOrdering) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.KeyVector') && isa(varargin{2},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1380, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.marginalMultifrontalBayesNet');
    end

    function varargout = negate(this, varargin)
      % NEGATE usage: negate() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1381, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.negate');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1382, this, varargin{:});
        return
      end
      % OPTIMIZE usage: optimize(Ordering ordering) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Ordering')
        varargout{1} = gtsam_wrapper(1383, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.optimize');
    end

    function varargout = optimizeGradientSearch(this, varargin)
      % OPTIMIZEGRADIENTSEARCH usage: optimizeGradientSearch() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1384, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.optimizeGradientSearch');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1385, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1386, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1387, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.print');
    end

    function varargout = printErrors(this, varargin)
      % PRINTERRORS usage: printErrors(VectorValues c, string str, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'char') && isa(varargin{3},'gtsam.KeyFormatter')
        gtsam_wrapper(1388, this, varargin{:});
        return
      end
      % PRINTERRORS usage: printErrors(VectorValues c, string str) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.VectorValues') && isa(varargin{2},'char')
        gtsam_wrapper(1389, this, varargin{:});
        return
      end
      % PRINTERRORS usage: printErrors(VectorValues c) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        gtsam_wrapper(1390, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.printErrors');
    end

    function varargout = probPrime(this, varargin)
      % PROBPRIME usage: probPrime(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1391, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.probPrime');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(GaussianFactor factor) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactor')
        gtsam_wrapper(1392, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianConditional')
        gtsam_wrapper(1393, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianFactorGraph graph) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        gtsam_wrapper(1394, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianBayesNet')
        gtsam_wrapper(1395, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianBayesTree bayesTree) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianBayesTree')
        gtsam_wrapper(1396, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.push_back');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1397, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1398, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.size');
    end

    function varargout = sparseJacobian_(this, varargin)
      % SPARSEJACOBIAN_ usage: sparseJacobian_() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1399, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.sparseJacobian_');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(1400, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.GaussianFactorGraph.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.GaussianFactorGraph.string_deserialize(sobj);
    end
  end
end
