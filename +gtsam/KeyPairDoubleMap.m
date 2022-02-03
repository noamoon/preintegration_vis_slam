%class KeyPairDoubleMap, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%KeyPairDoubleMap()
%KeyPairDoubleMap(KeyPairDoubleMap other)
%
%-------Methods-------
%at(pair<size_t,size_t> keypair) : returns size_t
%clear() : returns void
%empty() : returns bool
%size() : returns size_t
%
classdef KeyPairDoubleMap < handle
  properties
    ptr_gtsamKeyPairDoubleMap = 0
  end
  methods
    function obj = KeyPairDoubleMap(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3225, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(3226);
      elseif nargin == 1 && isa(varargin{1},'gtsam.KeyPairDoubleMap')
        my_ptr = gtsam_wrapper(3227, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.KeyPairDoubleMap constructor');
      end
      obj.ptr_gtsamKeyPairDoubleMap = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3228, obj.ptr_gtsamKeyPairDoubleMap);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(pair<size_t,size_t> keypair) : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'pairsize_tsize_t')
        varargout{1} = gtsam_wrapper(3229, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyPairDoubleMap.at');
    end

    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(3230, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyPairDoubleMap.clear');
    end

    function varargout = empty(this, varargin)
      % EMPTY usage: empty() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3231, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyPairDoubleMap.empty');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3232, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.KeyPairDoubleMap.size');
    end

  end

  methods(Static = true)
  end
end
