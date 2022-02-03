%class KeyGroupMap, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%KeyGroupMap()
%
%-------Methods-------
%at(size_t key) : returns size_t
%clear() : returns void
%empty() : returns bool
%erase(size_t key) : returns int
%insert2(size_t key, int val) : returns bool
%size() : returns size_t
%
classdef KeyGroupMap < handle
  properties
    ptr_gtsamKeyGroupMap = 0
  end
  methods
    function obj = KeyGroupMap(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(48, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(49);
      else
        error('Arguments do not match any overload of gtsam.KeyGroupMap constructor');
      end
      obj.ptr_gtsamKeyGroupMap = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(50, obj.ptr_gtsamKeyGroupMap);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t key) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(51, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyGroupMap.at');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(52, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyGroupMap.clear');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(53, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyGroupMap.empty');
    end

    function varargout = erase(this, varargin)
      % ERASE usage: erase(size_t key) : returns int
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(54, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyGroupMap.erase');
    end

    function varargout = insert2(this, varargin)
      % INSERT2 usage: insert2(size_t key, int val) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(55, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyGroupMap.insert2');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(56, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyGroupMap.size');
    end

  end

  methods(Static = true)
  end
end
