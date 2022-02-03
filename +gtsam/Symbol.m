%class Symbol, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%Symbol()
%Symbol(char c, uint64_t j)
%Symbol(size_t key)
%
%-------Methods-------
%chr() : returns char
%equals(Symbol expected, double tol) : returns bool
%index() : returns uint64_t
%key() : returns size_t
%print(string s) : returns void
%string() : returns string
%
classdef Symbol < handle
  properties
    ptr_gtsamSymbol = 0
  end
  methods
    function obj = Symbol(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(1554, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(1555);
      elseif nargin == 2 && isa(varargin{1},'char') && isa(varargin{2},'uint64_t')
        my_ptr = gtsam_wrapper(1556, varargin{1}, varargin{2});
      elseif nargin == 1 && isa(varargin{1},'numeric')
        my_ptr = gtsam_wrapper(1557, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.Symbol constructor');
      end
      obj.ptr_gtsamSymbol = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1558, obj.ptr_gtsamSymbol);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = chr(this, varargin)
      % CHR usage: chr() : returns char
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1559, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Symbol.chr');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(Symbol expected, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.Symbol') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1560, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Symbol.equals');
    end

    function varargout = index(this, varargin)
      % INDEX usage: index() : returns uint64_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1561, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Symbol.index');
    end

    function varargout = key(this, varargin)
      % KEY usage: key() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1562, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Symbol.key');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1563, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1564, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Symbol.print');
    end

    function varargout = string(this, varargin)
      % STRING usage: string() : returns string
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1565, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.Symbol.string');
    end

  end

  methods(Static = true)
  end
end
