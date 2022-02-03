%class GaussianFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%augmentedInformation() : returns Matrix
%augmentedJacobian() : returns Matrix
%clone() : returns gtsam::GaussianFactor
%empty() : returns bool
%equals(GaussianFactor lf, double tol) : returns bool
%error(VectorValues c) : returns double
%information() : returns Matrix
%jacobian() : returns pair< Matrix, Vector >
%keys() : returns gtsam::KeyVector
%negate() : returns gtsam::GaussianFactor
%print(string s, KeyFormatter keyFormatter) : returns void
%size() : returns size_t
%
classdef GaussianFactor < handle
  properties
    ptr_gtsamGaussianFactor = 0
  end
  methods
    function obj = GaussianFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1265, varargin{2});
        end
        gtsam_wrapper(1264, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.GaussianFactor constructor');
      end
      obj.ptr_gtsamGaussianFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1266, obj.ptr_gtsamGaussianFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = augmentedInformation(this, varargin)
      % AUGMENTEDINFORMATION usage: augmentedInformation() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1267, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.augmentedInformation');
    end

    function varargout = augmentedJacobian(this, varargin)
      % AUGMENTEDJACOBIAN usage: augmentedJacobian() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1268, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.augmentedJacobian');
    end

    function varargout = clone(this, varargin)
      % CLONE usage: clone() : returns gtsam.GaussianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1269, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.clone');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1270, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.empty');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianFactor lf, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1271, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(VectorValues c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.VectorValues')
        varargout{1} = gtsam_wrapper(1272, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.error');
    end

    function varargout = information(this, varargin)
      % INFORMATION usage: information() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1273, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.information');
    end

    function varargout = jacobian(this, varargin)
      % JACOBIAN usage: jacobian() : returns pair< Matrix, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        [ varargout{1} varargout{2} ] = gtsam_wrapper(1274, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.jacobian');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1275, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.keys');
    end

    function varargout = negate(this, varargin)
      % NEGATE usage: negate() : returns gtsam.GaussianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1276, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.negate');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1277, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1278, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1279, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.print');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1280, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianFactor.size');
    end

  end

  methods(Static = true)
  end
end
