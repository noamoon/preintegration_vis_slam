%class VariableIndex, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%VariableIndex()
%VariableIndex(SymbolicFactorGraph sfg)
%VariableIndex(GaussianFactorGraph gfg)
%VariableIndex(NonlinearFactorGraph fg)
%VariableIndex(VariableIndex other)
%
%-------Methods-------
%equals(VariableIndex other, double tol) : returns bool
%nEntries() : returns size_t
%nFactors() : returns size_t
%print(string s, KeyFormatter keyFormatter) : returns void
%size() : returns size_t
%
classdef VariableIndex < handle
  properties
    ptr_gtsamVariableIndex = 0
  end
  methods
    function obj = VariableIndex(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2627, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2628);
      elseif nargin == 1 && isa(varargin{1},'gtsam.SymbolicFactorGraph')
        my_ptr = gtsam_wrapper(2629, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.GaussianFactorGraph')
        my_ptr = gtsam_wrapper(2630, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        my_ptr = gtsam_wrapper(2631, varargin{1});
      elseif nargin == 1 && isa(varargin{1},'gtsam.VariableIndex')
        my_ptr = gtsam_wrapper(2632, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.VariableIndex constructor');
      end
      obj.ptr_gtsamVariableIndex = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2633, obj.ptr_gtsamVariableIndex);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = equals(this, varargin)
      % EQUALS usage: equals(VariableIndex other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.VariableIndex') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2634, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VariableIndex.equals');
    end

    function varargout = nEntries(this, varargin)
      % NENTRIES usage: nEntries() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2635, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VariableIndex.nEntries');
    end

    function varargout = nFactors(this, varargin)
      % NFACTORS usage: nFactors() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2636, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VariableIndex.nFactors');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2637, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2638, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2639, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VariableIndex.print');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2640, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.VariableIndex.size');
    end

  end

  methods(Static = true)
  end
end
