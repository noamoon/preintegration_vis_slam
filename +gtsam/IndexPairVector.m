%class IndexPairVector, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%IndexPairVector()
%IndexPairVector(IndexPairVector other)
%
%-------Methods-------
%at(size_t i) : returns gtsam::IndexPair
%clear() : returns void
%empty() : returns bool
%push_back(IndexPair key) : returns void
%size() : returns size_t
%
classdef IndexPairVector < handle
  properties
    ptr_gtsamIndexPairVector = 0
  end
  methods
    function obj = IndexPairVector(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(128, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(129);
      elseif nargin == 1 && isa(varargin{1},'gtsam.IndexPairVector')
        my_ptr = gtsam_wrapper(130, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.IndexPairVector constructor');
      end
      obj.ptr_gtsamIndexPairVector = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(131, obj.ptr_gtsamIndexPairVector);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns gtsam.IndexPair
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(132, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairVector.at');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(133, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairVector.clear');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(134, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairVector.empty');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(IndexPair key) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.IndexPair')
        gtsam_wrapper(135, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairVector.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(136, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.IndexPairVector.size');
    end

  end

  methods(Static = true)
  end
end
