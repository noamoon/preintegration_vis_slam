%class FactorIndices, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%FactorIndices()
%FactorIndices(FactorIndices other)
%
%-------Methods-------
%at(size_t i) : returns size_t
%back() : returns size_t
%clear() : returns void
%empty() : returns bool
%front() : returns size_t
%push_back(size_t factorIndex) : returns void
%size() : returns size_t
%
classdef FactorIndices < handle
  properties
    ptr_gtsamFactorIndices = 0
  end
  methods
    function obj = FactorIndices(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(67, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(68);
      elseif nargin == 1 && isa(varargin{1},'gtsam.FactorIndices')
        my_ptr = gtsam_wrapper(69, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.FactorIndices constructor');
      end
      obj.ptr_gtsamFactorIndices = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(70, obj.ptr_gtsamFactorIndices);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t i) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(71, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(72, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.back');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(73, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.clear');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(74, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.empty');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(75, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.front');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(size_t factorIndex) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        gtsam_wrapper(76, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.push_back');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(77, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.FactorIndices.size');
    end

  end

  methods(Static = true)
  end
end
