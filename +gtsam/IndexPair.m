%class IndexPair, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%IndexPair()
%IndexPair(size_t i, size_t j)
%
%-------Methods-------
%i() : returns size_t
%j() : returns size_t
%
classdef IndexPair < handle
  properties
    ptr_gtsamIndexPair = 0
  end
  methods
    function obj = IndexPair(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(107, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(108);
      elseif nargin == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        my_ptr = gtsam_wrapper(109, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.IndexPair constructor');
      end
      obj.ptr_gtsamIndexPair = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(110, obj.ptr_gtsamIndexPair);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = i(this, varargin)
      % I usage: i() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(111, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPair.i');
    end

    function varargout = j(this, varargin)
      % J usage: j() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(112, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPair.j');
    end

  end

  methods(Static = true)
  end
end
