%class ParameterMatrix7, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ParameterMatrix7(size_t N)
%ParameterMatrix7(Matrix matrix)
%
%-------Methods-------
%matrix() : returns Matrix
%print(string s) : returns void
%
classdef ParameterMatrix7 < handle
  properties
    ptr_gtsamParameterMatrix7 = 0
  end
  methods
    function obj = ParameterMatrix7(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(272, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(273, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(274, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.ParameterMatrix7 constructor');
      end
      obj.ptr_gtsamParameterMatrix7 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(275, obj.ptr_gtsamParameterMatrix7);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(276, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix7.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(277, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(278, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix7.print');
    end

  end

  methods(Static = true)
  end
end
