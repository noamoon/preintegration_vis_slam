%class ShonanAveraging2, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ShonanAveraging2(string g2oFile)
%ShonanAveraging2(string g2oFile, ShonanAveragingParameters2 parameters)
%ShonanAveraging2(BetweenFactorPose2s factors, ShonanAveragingParameters2 parameters)
%
%-------Methods-------
%buildGraphAt(size_t p) : returns gtsam::NonlinearFactorGraph
%checkOptimality(Values values) : returns bool
%computeA_(Values values) : returns Matrix
%computeLambda_(Values values) : returns Matrix
%computeMinEigenValue(Values values) : returns double
%computeMinEigenVector(Values values) : returns pair< double, Vector >
%cost(Values values) : returns double
%costAt(size_t p, Values values) : returns double
%createOptimizerAt(size_t p, Values initial) : returns gtsam::LevenbergMarquardtOptimizer
%denseD() : returns Matrix
%denseL() : returns Matrix
%denseQ() : returns Matrix
%initializeRandomly() : returns gtsam::Values
%initializeRandomlyAt(size_t p) : returns gtsam::Values
%initializeWithDescent(size_t p, Values values, Vector minEigenVector, double minEigenValue) : returns gtsam::Values
%keys(size_t i) : returns gtsam::KeyVector
%measured(size_t i) : returns gtsam::Rot2
%nrMeasurements() : returns size_t
%nrUnknowns() : returns size_t
%projectFrom(size_t p, Values values) : returns gtsam::Values
%roundSolution(Values values) : returns gtsam::Values
%run(Values initial, size_t min_p, size_t max_p) : returns pair< gtsam::Values, double >
%tryOptimizingAt(size_t p, Values initial) : returns gtsam::Values
%
classdef ShonanAveraging2 < handle
  properties
    ptr_gtsamShonanAveraging2 = 0
  end
  methods
    function obj = ShonanAveraging2(varargin)
      if nargin == 2 && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        my_ptr = varargin{2};
        gtsam_wrapper(3168, my_ptr);
      elseif nargin == 1 && isa(varargin{1},'char')
        my_ptr = gtsam_wrapper(3169, varargin{1});
      elseif nargin == 2 && isa(varargin{1},'char') && isa(varargin{2},'gtsam.ShonanAveragingParameters2')
        my_ptr = gtsam_wrapper(3170, varargin{1}, varargin{2});
      elseif nargin == 2 && isa(varargin{1},'gtsam.BetweenFactorPose2s') && isa(varargin{2},'gtsam.ShonanAveragingParameters2')
        my_ptr = gtsam_wrapper(3171, varargin{1}, varargin{2});
      else
        error('Arguments do not match any overload of gtsam.ShonanAveraging2 constructor');
      end
      obj.ptr_gtsamShonanAveraging2 = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3172, obj.ptr_gtsamShonanAveraging2);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
    function varargout = buildGraphAt(this, varargin)
      % BUILDGRAPHAT usage: buildGraphAt(size_t p) : returns gtsam.NonlinearFactorGraph
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3173, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.buildGraphAt');
    end

    function varargout = checkOptimality(this, varargin)
      % CHECKOPTIMALITY usage: checkOptimality(Values values) : returns bool
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3174, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.checkOptimality');
    end

    function varargout = computeA_(this, varargin)
      % COMPUTEA_ usage: computeA_(Values values) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3175, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.computeA_');
    end

    function varargout = computeLambda_(this, varargin)
      % COMPUTELAMBDA_ usage: computeLambda_(Values values) : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3176, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.computeLambda_');
    end

    function varargout = computeMinEigenValue(this, varargin)
      % COMPUTEMINEIGENVALUE usage: computeMinEigenValue(Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3177, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.computeMinEigenValue');
    end

    function varargout = computeMinEigenVector(this, varargin)
      % COMPUTEMINEIGENVECTOR usage: computeMinEigenVector(Values values) : returns pair< double, Vector >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3178, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.computeMinEigenVector');
    end

    function varargout = cost(this, varargin)
      % COST usage: cost(Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3179, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.cost');
    end

    function varargout = costAt(this, varargin)
      % COSTAT usage: costAt(size_t p, Values values) : returns double
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3180, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.costAt');
    end

    function varargout = createOptimizerAt(this, varargin)
      % CREATEOPTIMIZERAT usage: createOptimizerAt(size_t p, Values initial) : returns gtsam.LevenbergMarquardtOptimizer
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3181, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.createOptimizerAt');
    end

    function varargout = denseD(this, varargin)
      % DENSED usage: denseD() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3182, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.denseD');
    end

    function varargout = denseL(this, varargin)
      % DENSEL usage: denseL() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3183, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.denseL');
    end

    function varargout = denseQ(this, varargin)
      % DENSEQ usage: denseQ() : returns Matrix
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3184, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.denseQ');
    end

    function varargout = initializeRandomly(this, varargin)
      % INITIALIZERANDOMLY usage: initializeRandomly() : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3185, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.initializeRandomly');
    end

    function varargout = initializeRandomlyAt(this, varargin)
      % INITIALIZERANDOMLYAT usage: initializeRandomlyAt(size_t p) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3186, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.initializeRandomlyAt');
    end

    function varargout = initializeWithDescent(this, varargin)
      % INITIALIZEWITHDESCENT usage: initializeWithDescent(size_t p, Values values, Vector minEigenVector, double minEigenValue) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 4 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values') && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double')
        varargout{1} = gtsam_wrapper(3187, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.initializeWithDescent');
    end

    function varargout = keys(this, varargin)
      % KEYS usage: keys(size_t i) : returns gtsam.KeyVector
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3188, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.keys');
    end

    function varargout = measured(this, varargin)
      % MEASURED usage: measured(size_t i) : returns gtsam.Rot2
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'numeric')
        varargout{1} = gtsam_wrapper(3189, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.measured');
    end

    function varargout = nrMeasurements(this, varargin)
      % NRMEASUREMENTS usage: nrMeasurements() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3190, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.nrMeasurements');
    end

    function varargout = nrUnknowns(this, varargin)
      % NRUNKNOWNS usage: nrUnknowns() : returns size_t
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 0
        varargout{1} = gtsam_wrapper(3191, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.nrUnknowns');
    end

    function varargout = projectFrom(this, varargin)
      % PROJECTFROM usage: projectFrom(size_t p, Values values) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3192, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.projectFrom');
    end

    function varargout = roundSolution(this, varargin)
      % ROUNDSOLUTION usage: roundSolution(Values values) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 1 && isa(varargin{1},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3193, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.roundSolution');
    end

    function varargout = run(this, varargin)
      % RUN usage: run(Values initial, size_t min_p, size_t max_p) : returns pair< gtsam.Values, double >
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 3 && isa(varargin{1},'gtsam.Values') && isa(varargin{2},'numeric') && isa(varargin{3},'numeric')
        [ varargout{1} varargout{2} ] = gtsam_wrapper(3194, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.run');
    end

    function varargout = tryOptimizingAt(this, varargin)
      % TRYOPTIMIZINGAT usage: tryOptimizingAt(size_t p, Values initial) : returns gtsam.Values
      % Doxygen can be found at https://gtsam.org/doxygen/
      if length(varargin) == 2 && isa(varargin{1},'numeric') && isa(varargin{2},'gtsam.Values')
        varargout{1} = gtsam_wrapper(3195, this, varargin{:});
        return
      end
      error('Arguments do not match any overload of function gtsam.ShonanAveraging2.tryOptimizingAt');
    end

  end

  methods(Static = true)
  end
end
