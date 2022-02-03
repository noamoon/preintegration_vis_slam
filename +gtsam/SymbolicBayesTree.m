%class SymbolicBayesTree, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SymbolicBayesTree()
%SymbolicBayesTree(SymbolicBayesTree other)
%
%-------Methods-------
%clear() : returns void
%deleteCachedShortcuts() : returns void
%equals(SymbolicBayesTree other, double tol) : returns bool
%joint(size_t key1, size_t key2) : returns gtsam::SymbolicFactorGraph
%jointBayesNet(size_t key1, size_t key2) : returns gtsam::SymbolicBayesNet
%marginalFactor(size_t key) : returns gtsam::SymbolicConditional
%numCachedSeparatorMarginals() : returns size_t
%print(string s, KeyFormatter keyFormatter) : returns void
%saveGraph(string s) : returns void
%size() : returns size_t
%
classdef SymbolicBayesTree < handle
  properties
    ptr_gtsamSymbolicBayesTree = 0
  end
  methods
    function obj = SymbolicBayesTree(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2599, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2600);
      elseif nargin == 1 && isa(varargin{1},'gtsam.SymbolicBayesTree')
        my_ptr = gtsam_wrapper(2601, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SymbolicBayesTree constructor');
      end
      obj.ptr_gtsamSymbolicBayesTree = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2602, obj.ptr_gtsamSymbolicBayesTree);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = clear(this, varargin)
      % CLEAR usage: clear() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2603, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.clear');
    end

    function varargout = deleteCachedShortcuts(this, varargin)
      % DELETECACHEDSHORTCUTS usage: deleteCachedShortcuts() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2604, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.deleteCachedShortcuts');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SymbolicBayesTree other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicBayesTree') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2605, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.equals');
    end

    function varargout = joint(this, varargin)
      % JOINT usage: joint(size_t key1, size_t key2) : returns gtsam.SymbolicFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(2606, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.joint');
    end

    function varargout = jointBayesNet(this, varargin)
      % JOINTBAYESNET usage: jointBayesNet(size_t key1, size_t key2) : returns gtsam.SymbolicBayesNet
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'numeric')
        varargout{1} = gtsam_wrapper(2607, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.jointBayesNet');
    end

    function varargout = marginalFactor(this, varargin)
      % MARGINALFACTOR usage: marginalFactor(size_t key) : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2608, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.marginalFactor');
    end

    function varargout = numCachedSeparatorMarginals(this, varargin)
      % NUMCACHEDSEPARATORMARGINALS usage: numCachedSeparatorMarginals() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2609, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.numCachedSeparatorMarginals');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2610, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2611, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2612, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.print');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2613, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2614, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesTree.size');
    end

  end

  methods(Static = true)
  end
end
