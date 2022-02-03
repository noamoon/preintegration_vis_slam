%class ConstantTwistScenario, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%ConstantTwistScenario(Vector w, Vector v)
%ConstantTwistScenario(Vector w, Vector v, Pose3 nTb0)
%
classdef ConstantTwistScenario < gtsam.Scenario
  properties
    ptr_gtsamConstantTwistScenario = 0
  end
  methods
    function obj = ConstantTwistScenario(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3463, varargin{2});
        end
        base_ptr = gtsam_wrapper(3462, my_ptr);
      elseif nargin == 2 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(3464, varargin{1}, varargin{2});
      elseif nargin == 3 && isa(varargin{1},'double') && size(varargin{1},2)==1 && isa(varargin{2},'double') && size(varargin{2},2)==1 && isa(varargin{3},'gtsam.Pose3')
        [ my_ptr, base_ptr ] = gtsam_wrapper(3465, varargin{1}, varargin{2}, varargin{3});
      else
        error('Arguments do not match any overload of gtsam.ConstantTwistScenario constructor');
      end
      obj = obj@gtsam.Scenario(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamConstantTwistScenario = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3466, obj.ptr_gtsamConstantTwistScenario);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
