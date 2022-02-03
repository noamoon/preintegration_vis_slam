%class AcceleratingScenario, see Doxygen page for details
%at https://gtsam.org/doxygen/
%
%-------Constructors-------
%AcceleratingScenario(Rot3 nRb, Point3 p0, Vector v0, Vector a_n, Vector omega_b)
%
classdef AcceleratingScenario < gtsam.Scenario
  properties
    ptr_gtsamAcceleratingScenario = 0
  end
  methods
    function obj = AcceleratingScenario(varargin)
      if (nargin == 2 || (nargin == 3 && strcmp(varargin{3}, 'void'))) && isa(varargin{1}, 'uint64') && varargin{1} == uint64(5139824614673773682)
        if nargin == 2
          my_ptr = varargin{2};
        else
          my_ptr = gtsam_wrapper(3468, varargin{2});
        end
        base_ptr = gtsam_wrapper(3467, my_ptr);
      elseif nargin == 5 && isa(varargin{1},'gtsam.Rot3') && isa(varargin{2},'double') && size(varargin{2},1)==3 && size(varargin{2},2)==1 && isa(varargin{3},'double') && size(varargin{3},2)==1 && isa(varargin{4},'double') && size(varargin{4},2)==1 && isa(varargin{5},'double') && size(varargin{5},2)==1
        [ my_ptr, base_ptr ] = gtsam_wrapper(3469, varargin{1}, varargin{2}, varargin{3}, varargin{4}, varargin{5});
      else
        error('Arguments do not match any overload of gtsam.AcceleratingScenario constructor');
      end
      obj = obj@gtsam.Scenario(uint64(5139824614673773682), base_ptr);
      obj.ptr_gtsamAcceleratingScenario = my_ptr;
    end

    function delete(obj)
      gtsam_wrapper(3470, obj.ptr_gtsamAcceleratingScenario);
    end

    function display(obj), obj.print(''); end
    %DISPLAY Calls print on the object
    function disp(obj), obj.display; end
    %DISP Calls print on the object
  end

  methods(Static = true)
  end
end
