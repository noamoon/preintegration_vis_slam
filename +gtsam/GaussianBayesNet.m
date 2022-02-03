%class GaussianBayesNet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianBayesNet()
%GaussianBayesNet(GaussianConditional conditional)
%
%-------Methods-------
%at(size_t idx) : returns gtsam::GaussianConditional
%back() : returns gtsam::GaussianConditional
%backSubstitute(VectorValues gx) : returns gtsam::VectorValues
%backSubstituteTranspose(VectorValues gx) : returns gtsam::VectorValues
%determinant() : returns double
%equals(GaussianBayesNet other, double tol) : returns bool
%error(VectorValues x) : returns double
%exists(size_t idx) : returns bool
%front() : returns gtsam::GaussianConditional
%gradient(VectorValues x0) : returns gtsam::VectorValues
%gradientAtZero() : returns gtsam::VectorValues
%keyVector() : returns gtsam::KeyVector
%keys() : returns gtsam::KeySet
%logDeterminant() : returns double
%optimize() : returns gtsam::VectorValues
%optimize(VectorValues solutionForMissing) : returns gtsam::VectorValues
%optimizeGradientSearch() : returns gtsam::VectorValues
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(GaussianConditional conditional) : returns void
%push_back(GaussianBayesNet bayesNet) : returns void
%saveGraph(string s) : returns void
%size() : returns size_t
%
classdef GaussianBayesNet < handle
  properties
    ptr_gtsamGaussianBayesNet = 0
  end
  methods
    function obj = GaussianBayesNet(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1433, varargin{2});
        end
        gtsam_wrapper(1432, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1434);
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianConditional')
        my_ptr = gtsam_wrapper(1435, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.GaussianBayesNet constructor');
      end
      obj.ptr_gtsamGaussianBayesNet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1436, obj.ptr_gtsamGaussianBayesNet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1437, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1438, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.back');
    end

    function varargout = backSubstitute(this, varargin)
      % BACKSUBSTITUTE usage: backSubstitute(VectorValues gx) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1439, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.backSubstitute');
    end

    function varargout = backSubstituteTranspose(this, varargin)
      % BACKSUBSTITUTETRANSPOSE usage: backSubstituteTranspose(VectorValues gx) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1440, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.backSubstituteTranspose');
    end

    function varargout = determinant(this, varargin)
      % DETERMINANT usage: determinant() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1441, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.determinant');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianBayesNet other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianBayesNet') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1442, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues x) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1443, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.error');
    end

    function varargout = exists(this, varargin)
      % EXISTS usage: exists(size_t idx) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(1444, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.exists');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns gtsam.GaussianConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1445, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.front');
    end

    function varargout = gradient(this, varargin)
      % GRADIENT usage: gradient(VectorValues x0) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1446, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.gradient');
    end

    function varargout = gradientAtZero(this, varargin)
      % GRADIENTATZERO usage: gradientAtZero() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1447, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.gradientAtZero');
    end

    function varargout = keyVector(this, varargin)
      % KEYVECTOR usage: keyVector() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1448, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.keyVector');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeySet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1449, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.keys');
    end

    function varargout = logDeterminant(this, varargin)
      % LOGDETERMINANT usage: logDeterminant() : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1450, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.logDeterminant');
    end

    function varargout = optimize(this, varargin)
      % OPTIMIZE usage: optimize() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1451, this, varargin{:});
        return
      end
      % OPTIMIZE usage: optimize(VectorValues solutionForMissing) : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1452, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.optimize');
    end

    function varargout = optimizeGradientSearch(this, varargin)
      % OPTIMIZEGRADIENTSEARCH usage: optimizeGradientSearch() : returns gtsam.VectorValues
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1453, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.optimizeGradientSearch');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1454, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1455, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1456, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(GaussianConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianConditional')
        gtsam_wrapper(1457, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(GaussianBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.GaussianBayesNet')
        gtsam_wrapper(1458, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.push_back');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1459, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1460, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianBayesNet.size');
    end

  end

  methods(Static = true)
  end
end
