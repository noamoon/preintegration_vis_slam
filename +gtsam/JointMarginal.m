%class JointMarginal, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%at(size_t iVariable, size_t jVariable) : returns Matrix
%fullMatrix() : returns Matrix
%print(string s, KeyFormatter keyFormatter) : returns void
%
classdef JointMarginal < handle
  properties
    ptr_gtsamJointMarginal = 0
  end
  methods
    function obj = JointMarginal(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1834, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.JointMarginal constructor');
      end
      obj.ptr_gtsamJointMarginal = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1835, obj.ptr_gtsamJointMarginal);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t iVariable, size_t jVariable) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(1836, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JointMarginal.at');
    end

    function varargout = fullMatrix(this, varargin)
      % FULLMATRIX usage: fullMatrix() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1837, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JointMarginal.fullMatrix');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1838, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1839, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1840, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.JointMarginal.print');
    end

  end

  methods(Static = true)
  end
end
