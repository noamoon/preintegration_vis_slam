%class Errors, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Errors()
%Errors(VectorValues V)
%
%-------Methods-------
%equals(Errors expected, double tol) : returns bool
%print(string s) : returns void
%
classdef Errors < handle
  properties
    ptr_gtsamErrors = 0
  end
  methods
    function obj = Errors(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1485, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1486);
      elseif nargin == 1 && isa(varargin{1},'gtsam.VectorValues')
        my_ptr = gtsam_wrapper(1487, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Errors constructor');
      end
      obj.ptr_gtsamErrors = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1488, obj.ptr_gtsamErrors);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Errors expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Errors') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1489, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Errors.equals');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1490, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1491, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Errors.print');
    end

  end

  methods(Static = true)
  end
end
