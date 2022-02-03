%class NonlinearFactor, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Methods-------
%active(Values c) : returns bool
%clone() : returns gtsam::NonlinearFactor
%dim() : returns size_t
%equals(NonlinearFactor other, double tol) : returns bool
%error(Values c) : returns double
%keys() : returns gtsam::KeyVector
%linearize(Values c) : returns gtsam::GaussianFactor
%print(string s, KeyFormatter keyFormatter) : returns void
%printKeys(string s) : returns void
%rekey(KeyVector newKeys) : returns gtsam::NonlinearFactor
%size() : returns size_t
%
classdef NonlinearFactor < handle
  properties
    ptr_gtsamNonlinearFactor = 0
  end
  methods
    function obj = NonlinearFactor(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(1676, varargin{2});
        end
        gtsam_wrapper(1675, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.NonlinearFactor constructor');
      end
      obj.ptr_gtsamNonlinearFactor = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(1677, obj.ptr_gtsamNonlinearFactor);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = active(this, varargin)
      % ACTIVE usage: active(Values c) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1678, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.active');
    end

    function varargout = clone(this, varargin)
      % CLONE usage: clone() : returns gtsam.NonlinearFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1679, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.clone');
    end

    function varargout = dim(this, varargin)
      % DIM usage: dim() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1680, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.dim');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(NonlinearFactor other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactor') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(1681, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.equals');
    end

    function varargout = error(this, varargin)
      % ERROR usage: error(Values c) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1682, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.error');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys() : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1683, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.keys');
    end

    function varargout = linearize(this, varargin)
      % LINEARIZE usage: linearize(Values c) : returns gtsam.GaussianFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(1684, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.linearize');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(1685, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1686, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(1687, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.print');
    end

    function varargout = printKeys(this, varargin)
      % PRINTKEYS usage: printKeys(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(1688, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.printKeys');
    end

    function varargout = rekey(this, varargin)
      % REKEY usage: rekey(KeyVector newKeys) : returns gtsam.NonlinearFactor
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.KeyVector')
        varargout{1} = gtsam_wrapper(1689, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.rekey');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(1690, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.NonlinearFactor.size');
    end

  end

  methods(Static = true)
  end
end
