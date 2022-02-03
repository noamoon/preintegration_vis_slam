%class GaussianDensity, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%GaussianDensity(size_t key, Vector d, Matrix R, Diagonal sigmas)
%
%-------Methods-------
%covariance() : returns Matrix
%equals(GaussianDensity cg, double tol) : returns bool
%mean() : returns Vector
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef GaussianDensity < gtsam.GaussianConditional
  properties
    ptr_gtsamGaussianDensity = 0
  end
  methods
    function obj = GaussianDensity(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1423, varargin{2});
        end
        base_ptr = gtsam_wrapper(1422, my_ptr);
      elseif nargin == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'double') && isa(varargin{4},'gtsam.noiseModel.Diagonal')
        [ my_ptr, base_ptr ] = gtsam_wrapper(1424, varargin{1}, varargin{2}, varargin{3}, varargin{4});
      else
        error('Arguments do not match any overload of gtsam.GaussianDensity constructor');
      end
      obj = obj@gtsam.GaussianConditional(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamGaussianDensity = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1425, obj.ptr_gtsamGaussianDensity);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = covariance(this, varargin)
      % COVARIANCE usage: covariance() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1426, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.covariance');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(GaussianDensity cg, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.GaussianDensity') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1427, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.equals');
    end

    function varargout = mean(this, varargin)
      % MEAN usage: mean() : returns Vector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1428, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.mean');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1429, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1430, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1431, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.GaussianDensity.print');
    end

  end

  methods(Static = true)
  end
end
