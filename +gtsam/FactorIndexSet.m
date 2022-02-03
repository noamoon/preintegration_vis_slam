%class FactorIndexSet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%FactorIndexSet()
%FactorIndexSet(FactorIndexSet set)
%
%-------Methods-------
%clear() : returns void
%count(size_t factorIndex) : returns bool
%empty() : returns bool
%erase(size_t factorIndex) : returns bool
%insert(size_t factorIndex) : returns void
%size() : returns size_t
%
classdef FactorIndexSet < handle
  properties
    ptr_gtsamFactorIndexSet = 0
  end
  methods
    function obj = FactorIndexSet(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(57, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(58);
      elseif nargin == 1 && isa(varargin{1},'gtsam.FactorIndexSet')
        my_ptr = gtsam_wrapper(59, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.FactorIndexSet constructor');
      end
      obj.ptr_gtsamFactorIndexSet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(60, obj.ptr_gtsamFactorIndexSet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(61, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndexSet.clear');
    end

    function varargout = count(this, varargin)
      % COUNT usage: count(size_t factorIndex) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(62, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndexSet.count');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(63, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndexSet.empty');
    end

    function varargout = erase(this, varargin)
      % ERASE usage: erase(size_t factorIndex) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(64, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndexSet.erase');
    end

    function varargout = insert(this, varargin)
      % INSERT usage: insert(size_t factorIndex) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(65, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndexSet.insert');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(66, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndexSet.size');
    end

  end

  methods(Static = true)
  end
end
