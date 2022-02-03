%class InitializePose3, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Static Methods-------
%buildPose3graph(NonlinearFactorGraph graph) : returns gtsam::NonlinearFactorGraph
%computeOrientationsChordal(NonlinearFactorGraph pose3Graph) : returns gtsam::Values
%computeOrientationsGradient(NonlinearFactorGraph pose3Graph, Values givenGuess, size_t maxIter, bool setRefFrame) : returns gtsam::Values
%computeOrientationsGradient(NonlinearFactorGraph pose3Graph, Values givenGuess) : returns gtsam::Values
%initialize(NonlinearFactorGraph graph, Values givenGuess, bool useGradient) : returns gtsam::Values
%initialize(NonlinearFactorGraph graph) : returns gtsam::Values
%initializeOrientations(NonlinearFactorGraph graph) : returns gtsam::Values
%
%-------Serialization Interface-------
%string_serialize() : returns string
%string_deserialize(string serialized) : returns InitializePose3
%
classdef InitializePose3 < handle
  properties
    ptr_gtsamInitializePose3 = 0
  end
  methods
    function obj = InitializePose3(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(2914, my_ptr);
      else
        error('Arguments do not match any overload of gtsam.InitializePose3 constructor');
      end
      obj.ptr_gtsamInitializePose3 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(2915, obj.ptr_gtsamInitializePose3);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
    function varargout = buildPose3graph(varargin)
      % BUILDPOSE3GRAPH usage: buildPose3graph(NonlinearFactorGraph graph) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(2916, varargin{:});
        return
      end

      error('Arguments do not match any overload of function InitializePose3.buildPose3graph');
    end

    function varargout = computeOrientationsChordal(varargin)
      % COMPUTEORIENTATIONSCHORDAL usage: computeOrientationsChordal(NonlinearFactorGraph pose3Graph) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(2917, varargin{:});
        return
      end

      error('Arguments do not match any overload of function InitializePose3.computeOrientationsChordal');
    end

    function varargout = computeOrientationsGradient(varargin)
      % COMPUTEORIENTATIONSGRADIENT usage: computeOrientationsGradient(NonlinearFactorGraph pose3Graph, Values givenGuess, size_t maxIter, bool setRefFrame) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'numeric') && isa(varargin{4},'logical')
        varargout{1} = gtsam_wrapper(2918, varargin{:});
        return
      end

      % COMPUTEORIENTATIONSGRADIENT usage: computeOrientationsGradient(NonlinearFactorGraph pose3Graph, Values givenGuess) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(2919, varargin{:});
        return
      end

      error('Arguments do not match any overload of function InitializePose3.computeOrientationsGradient');
    end

    function varargout = initialize(varargin)
      % INITIALIZE usage: initialize(NonlinearFactorGraph graph, Values givenGuess, bool useGradient) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.NonlinearFactorGraph') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'logical')
        varargout{1} = gtsam_wrapper(2920, varargin{:});
        return
      end

      % INITIALIZE usage: initialize(NonlinearFactorGraph graph) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(2921, varargin{:});
        return
      end

      error('Arguments do not match any overload of function InitializePose3.initialize');
    end

    function varargout = initializeOrientations(varargin)
      % INITIALIZEORIENTATIONS usage: initializeOrientations(NonlinearFactorGraph graph) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.NonlinearFactorGraph')
        varargout{1} = gtsam_wrapper(2922, varargin{:});
        return
      end

      error('Arguments do not match any overload of function InitializePose3.initializeOrientations');
    end

  end
end
