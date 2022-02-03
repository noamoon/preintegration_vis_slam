%class GaussianBayesTree, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianBayesTree()
%GaussianBayesTree(GaussianBayesTree other)
%
%-------Methods-------
%determinant() : returns double
%empty() : returns bool
%equals(GaussianBayesTree other, double tol) : returns bool
%error(VectorValues x) : returns double
%gradient(VectorValues x0) : returns gtsam::VectorValues
%gradientAtZero() : returns gtsam::VectorValues
%joint(size_t key1, size_t key2) : returns gtsam::GaussianFactorGraph
%jointBayesNet(size_t key1, size_t key2) : returns gtsam::GaussianBayesNet
%logDeterminant() : returns double
%marginalCovariance(size_t key) : returns Matrix
%marginalFactor(size_t key) : returns gtsam::GaussianConditional
%numCachedSeparatorMarginals() : returns size_t
%optimize() : returns gtsam::VectorValues
%optimizeGradientSearch() : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%saveGraph(string s) : returns void
%size() : returns size_t
%
classdef GaussianBayesTree < handle
  properties
    ptr_gtsamGaussianBayesTree = 0
  end
  methods
    function obj = GaussianBayesTree(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1462, varargin{2});
        end
        gtsam_wrapper(1461, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1463);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianBayesTree')
        my_ptr = gtsam_wrapper(1464, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.GaussianBayesTree constructor');
      end
      obj.ptr_gtsamGaussianBayesTree = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1465, obj.ptr_gtsamGaussianBayesTree);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = determinant(this, varargin)
      % DETERMINANT usage: determinant() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1466, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.determinant');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1467, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianBayesTree other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianBayesTree') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1468, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues x) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1469, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.error');
    end

    function varargout = gradient(this, varargin)
      % GRADIENT usage: gradient(VectorValues x0) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1470, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.gradient');
    end

    function varargout = gradientAtZero(this, varargin)
      % GRADIENTATZERO usage: gradientAtZero() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1471, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.gradientAtZero');
    end

    function varargout = joint(this, varargin)
      % JOINT usage: joint(size_t key1, size_t key2) : returns gtsam.GaussianFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(1472, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.joint');
    end

    function varargout = jointBayesNet(this, varargin)
      % JOINTBAYESNET usage: jointBayesNet(size_t key1, size_t key2) : returns gtsam.GaussianBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(1473, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.jointBayesNet');
    end

    function varargout = logDeterminant(this, varargin)
      % LOGDETERMINANT usage: logDeterminant() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1474, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.logDeterminant');
    end

    function varargout = marginalCovariance(this, varargin)
      % MARGINALCOVARIANCE usage: marginalCovariance(size_t key) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1475, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.marginalCovariance');
    end

    function varargout = marginalFactor(this, varargin)
      % MARGINALFACTOR usage: marginalFactor(size_t key) : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1476, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.marginalFactor');
    end

    function varargout = numCachedSeparatorMarginals(this, varargin)
      % NUMCACHEDSEPARATORMARGINALS usage: numCachedSeparatorMarginals() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1477, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.numCachedSeparatorMarginals');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1478, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.optimize');
    end

    function varargout = optimizeGradientSearch(this, varargin)
      % OPTIMIZEGRADIENTSEARCH usage: optimizeGradientSearch() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1479, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.optimizeGradientSearch');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1480, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1481, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1482, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.print');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1483, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1484, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesTree.size');
    end

  end

  methods(Static = true)
  end
end
