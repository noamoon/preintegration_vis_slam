%class IndexPairSet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%IndexPairSet()
%
%-------Methods-------
%clear() : returns void
%count(IndexPair key) : returns bool
%empty() : returns bool
%erase(IndexPair key) : returns bool
%insert(IndexPair key) : returns void
%size() : returns size_t
%
classdef IndexPairSet < handle
  properties
    ptr_gtsamIndexPairSet = 0
  end
  methods
    function obj = IndexPairSet(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(119, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(120);
      else
        error('Arguments do not match any overload of gtsam.IndexPairSet constructor');
      end
      obj.ptr_gtsamIndexPairSet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(121, obj.ptr_gtsamIndexPairSet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(122, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSet.clear');
    end

    function varargout = count(this, varargin)
      % COUNT usage: count(IndexPair key) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPair')
        varargout{1} = gtsam_wrapper(123, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSet.count');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(124, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSet.empty');
    end

    function varargout = erase(this, varargin)
      % ERASE usage: erase(IndexPair key) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPair')
        varargout{1} = gtsam_wrapper(125, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSet.erase');
    end

    function varargout = insert(this, varargin)
      % INSERT usage: insert(IndexPair key) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPair')
        gtsam_wrapper(126, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSet.insert');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(127, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSet.size');
    end

  end

  methods(Static = true)
  end
end
