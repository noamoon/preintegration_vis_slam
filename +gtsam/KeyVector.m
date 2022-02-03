%class KeyVector, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%KeyVector()
%KeyVector(KeyVector other)
%
%-------Methods-------
%at(size_t i) : returns size_t
%back() : returns size_t
%clear() : returns void
%empty() : returns bool
%front() : returns size_t
%push_back(size_t key) : returns void
%size() : returns size_t
%
classdef KeyVector < handle
  properties
    ptr_gtsamKeyVector = 0
  end
  methods
    function obj = KeyVector(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(35, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(36);
      elseif nargin == 1 && isa(varargin{1},'gtsam.KeyVector')
        my_ptr = gtsam_wrapper(37, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.KeyVector constructor');
      end
      obj.ptr_gtsamKeyVector = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(38, obj.ptr_gtsamKeyVector);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(39, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(40, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.back');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(41, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.clear');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(42, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.empty');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(43, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.front');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(size_t key) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(44, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.push_back');
    end

    function varargout = string_serialize(this, varargin)
      % STRING_SERIALIZE usage: string_serialize() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(45, this, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.KeyVector.string_serialize');
      end
    end

    function sobj = saveobj(obj)
      % SAVEOBJ Saves the object to a matlab-readable format
      sobj = obj.string_serialize();
    end
    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(46, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyVector.size');
    end

  end

  methods(Static = true)
    function varargout = string_deserialize(varargin)
      % STRING_DESERIALIZE usage: string_deserialize() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1
        varargout{1} = gtsam_wrapper(47, varargin{:});
      else
        error('Arguments do not match any overload of function gtsam.KeyVector.string_deserialize');
      end
    end

    function obj = loadobj(sobj)
      % LOADOBJ Saves the object to a matlab-readable format
      obj = gtsam.KeyVector.string_deserialize(sobj);
    end
  end
end
