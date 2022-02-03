%class Point3Pairs, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Point3Pairs()
%
%-------Methods-------
%at(size_t n) : returns gtsam::Point3Pair
%empty() : returns bool
%push_back(Point3Pair point_pair) : returns void
%size() : returns size_t
%
classdef Point3Pairs < handle
  properties
    ptr_gtsamPoint3Pairs = 0
  end
  methods
    function obj = Point3Pairs(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(463, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(464);
      else
        error('Arguments do not match any overload of gtsam.Point3Pairs constructor');
      end
      obj.ptr_gtsamPoint3Pairs = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(465, obj.ptr_gtsamPoint3Pairs);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t n) : returns gtsam.Point3Pair
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(466, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point3Pairs.at');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(467, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point3Pairs.empty');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(Point3Pair point_pair) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Point3Pair')
        gtsam_wrapper(468, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point3Pairs.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(469, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point3Pairs.size');
    end

  end

  methods(Static = true)
  end
end
