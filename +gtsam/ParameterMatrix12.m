%class ParameterMatrix12, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ParameterMatrix12(size_t N)
%ParameterMatrix12(Matrix matrix)
%
%-------Methods-------
%matrix() : returns Matrix
%print(string s) : returns void
%
classdef ParameterMatrix12 < handle
  properties
    ptr_gtsamParameterMatrix12 = 0
  end
  methods
    function obj = ParameterMatrix12(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(307, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(308, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'double')
        my_ptr = gtsam_wrapper(309, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.ParameterMatrix12 constructor');
      end
      obj.ptr_gtsamParameterMatrix12 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(310, obj.ptr_gtsamParameterMatrix12);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = matrix(this, varargin)
      % MATRIX usage: matrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(311, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix12.matrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(312, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(313, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ParameterMatrix12.print');
    end

  end

  methods(Static = true)
  end
end
