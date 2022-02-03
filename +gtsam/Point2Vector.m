%class Point2Vector, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Point2Vector()
%Point2Vector(Point2Vector v)
%
%-------Methods-------
%assign(size_t n, Point2 u) : returns void
%at(size_t n) : returns Point2
%back() : returns Point2
%capacity() : returns size_t
%empty() : returns bool
%front() : returns Point2
%max_size() : returns size_t
%pop_back() : returns void
%push_back(Point2 x) : returns void
%reserve(size_t n) : returns void
%resize(size_t sz) : returns void
%size() : returns size_t
%
classdef Point2Vector < handle
  properties
    ptr_gtsamPoint2Vector = 0
  end
  methods
    function obj = Point2Vector(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(426, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(427);
      elseif nargin == 1 && isa(varargin{1},'gtsam.Point2Vector')
        my_ptr = gtsam_wrapper(428, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Point2Vector constructor');
      end
      obj.ptr_gtsamPoint2Vector = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(429, obj.ptr_gtsamPoint2Vector);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = assign(this, varargin)
      % ASSIGN usage: assign(size_t n, Point2 u) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'double') && size(varargin{2},1)==2 && size(varargin{2},2)==1
        gtsam_wrapper(430, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.assign');
    end

    function varargout = at(this, varargin)
      % AT usage: at(size_t n) : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(431, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(432, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.back');
    end

    function varargout = capacity(this, varargin)
      % CAPACITY usage: capacity() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(433, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.capacity');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(434, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.empty');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns Point2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(435, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.front');
    end

    function varargout = max_size(this, varargin)
      % MAX_SIZE usage: max_size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(436, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.max_size');
    end

    function varargout = pop_back(this, varargin)
      % POP_BACK usage: pop_back() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(437, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.pop_back');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(Point2 x) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'double') && size(varargin{1},1)==2 && size(varargin{1},2)==1
        gtsam_wrapper(438, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.push_back');
    end

    function varargout = reserve(this, varargin)
      % RESERVE usage: reserve(size_t n) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(439, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.reserve');
    end

    function varargout = resize(this, varargin)
      % RESIZE usage: resize(size_t sz) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(440, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.resize');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(441, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Point2Vector.size');
    end

  end

  methods(Static = true)
  end
end
