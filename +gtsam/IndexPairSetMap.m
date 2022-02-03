%class IndexPairSetMap, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%IndexPairSetMap()
%
%-------Methods-------
%at(IndexPair key) : returns gtsam::IndexPairSet
%clear() : returns void
%empty() : returns bool
%size() : returns size_t
%
classdef IndexPairSetMap < handle
  properties
    ptr_gtsamIndexPairSetMap = 0
  end
  methods
    function obj = IndexPairSetMap(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(137, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(138);
      else
        error('Arguments do not match any overload of gtsam.IndexPairSetMap constructor');
      end
      obj.ptr_gtsamIndexPairSetMap = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(139, obj.ptr_gtsamIndexPairSetMap);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(IndexPair key) : returns gtsam.IndexPairSet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPair')
        varargout{1} = gtsam_wrapper(140, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSetMap.at');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(141, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSetMap.clear');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(142, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSetMap.empty');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(143, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairSetMap.size');
    end

  end

  methods(Static = true)
  end
end
