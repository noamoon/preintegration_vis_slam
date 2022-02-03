%class SymbolicBayesTreeClique, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SymbolicBayesTreeClique()
%
%-------Methods-------
%deleteCachedShortcuts() : returns void
%equals(SymbolicBayesTreeClique other, double tol) : returns bool
%isRoot() : returns bool
%numCachedSeparatorMarginals() : returns size_t
%parent() : returns gtsam::SymbolicBayesTreeClique
%print(string s, KeyFormatter keyFormatter) : returns void
%treeSize() : returns size_t
%
classdef SymbolicBayesTreeClique < handle
  properties
    ptr_gtsamSymbolicBayesTreeClique = 0
  end
  methods
    function obj = SymbolicBayesTreeClique(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2615, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2616);
      else
        error('Arguments do not match any overload of gtsam.SymbolicBayesTreeClique constructor');
      end
      obj.ptr_gtsamSymbolicBayesTreeClique = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2617, obj.ptr_gtsamSymbolicBayesTreeClique);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = deleteCachedShortcuts(this, varargin)
      % DELETECACHEDSHORTCUTS usage: deleteCachedShortcuts() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2618, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.deleteCachedShortcuts');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SymbolicBayesTreeClique other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicBayesTreeClique') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2619, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.equals');
    end

    function varargout = isRoot(this, varargin)
      % ISROOT usage: isRoot() : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2620, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.isRoot');
    end

    function varargout = numCachedSeparatorMarginals(this, varargin)
      % NUMCACHEDSEPARATORMARGINALS usage: numCachedSeparatorMarginals() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2621, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.numCachedSeparatorMarginals');
    end

    function varargout = parent(this, varargin)
      % PARENT usage: parent() : returns gtsam.SymbolicBayesTreeClique
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2622, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.parent');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2623, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2624, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2625, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.print');
    end

    function varargout = treeSize(this, varargin)
      % TREESIZE usage: treeSize() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2626, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTreeClique.treeSize');
    end

  end

  methods(Static = true)
  end
end
