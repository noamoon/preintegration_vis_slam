%class SymbolicBayesNet, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%SymbolicBayesNet()
%SymbolicBayesNet(SymbolicBayesNet other)
%
%-------Methods-------
%at(size_t idx) : returns gtsam::SymbolicConditional
%back() : returns gtsam::SymbolicConditional
%equals(SymbolicBayesNet other, double tol) : returns bool
%front() : returns gtsam::SymbolicConditional
%print(string s, KeyFormatter keyFormatter) : returns void
%push_back(SymbolicConditional conditional) : returns void
%push_back(SymbolicBayesNet bayesNet) : returns void
%saveGraph(string s) : returns void
%size() : returns size_t
%
classdef SymbolicBayesNet < handle
  properties
    ptr_gtsamSymbolicBayesNet = 0
  end
  methods
    function obj = SymbolicBayesNet(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2584, my_ptr);
      elseif nargin == 0
        my_ptr = gtsam_wrapper(2585);
      elseif nargin == 1 && isa(varargin{1},'gtsam.SymbolicBayesNet')
        my_ptr = gtsam_wrapper(2586, varargin{1});
      else
        error('Arguments do not match any overload of gtsam.SymbolicBayesNet constructor');
      end
      obj.ptr_gtsamSymbolicBayesNet = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2587, obj.ptr_gtsamSymbolicBayesNet);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = at(this, varargin)
      % AT usage: at(size_t idx) : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(2588, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.at');
    end

    function varargout = back(this, varargin)
      % BACK usage: back() : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2589, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.back');
    end

    function varargout = equals(this, varargin)
      % EQUALS usage: equals(SymbolicBayesNet other, double tol) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.SymbolicBayesNet') && isa(varargin{2},'double')
        varargout{1} = gtsam_wrapper(2590, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.equals');
    end

    function varargout = front(this, varargin)
      % FRONT usage: front() : returns gtsam.SymbolicConditional
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2591, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.front');
    end

    function varargout = print(this, varargin)
      % PRINT usage: print(string s, KeyFormatter keyFormatter) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.KeyFormatter')
        gtsam_wrapper(2592, this, varargin{:});
        return
      end
      % PRINT usage: print(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2593, this, varargin{:});
        return
      end
      % PRINT usage: print() : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        gtsam_wrapper(2594, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.print');
    end

    function varargout = push_back(this, varargin)
      % PUSH_BACK usage: push_back(SymbolicConditional conditional) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicConditional')
        gtsam_wrapper(2595, this, varargin{:});
        return
      end
      % PUSH_BACK usage: push_back(SymbolicBayesNet bayesNet) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.SymbolicBayesNet')
        gtsam_wrapper(2596, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.push_back');
    end

    function varargout = saveGraph(this, varargin)
      % SAVEGRAPH usage: saveGraph(string s) : returns void
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'char')
        gtsam_wrapper(2597, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.saveGraph');
    end

    function varargout = size(this, varargin)
      % SIZE usage: size() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(2598, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.SymbolicBayesNet.size');
    end

  end

  methods(Static = true)
  end
end
