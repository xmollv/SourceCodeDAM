'use strict';

describe('Partido Detail Controller', function() {
    var $scope, $rootScope;
    var MockEntity, MockPartido, MockTemporada, MockArbitro, MockEquipo, MockEstadisticas;
    var createController;

    beforeEach(inject(function($injector) {
        $rootScope = $injector.get('$rootScope');
        $scope = $rootScope.$new();
        MockEntity = jasmine.createSpy('MockEntity');
        MockPartido = jasmine.createSpy('MockPartido');
        MockTemporada = jasmine.createSpy('MockTemporada');
        MockArbitro = jasmine.createSpy('MockArbitro');
        MockEquipo = jasmine.createSpy('MockEquipo');
        MockEstadisticas = jasmine.createSpy('MockEstadisticas');
        

        var locals = {
            '$scope': $scope,
            '$rootScope': $rootScope,
            'entity': MockEntity ,
            'Partido': MockPartido,
            'Temporada': MockTemporada,
            'Arbitro': MockArbitro,
            'Equipo': MockEquipo,
            'Estadisticas': MockEstadisticas
        };
        createController = function() {
            $injector.get('$controller')("PartidoDetailController", locals);
        };
    }));


    describe('Root Scope Listening', function() {
        it('Unregisters root scope listener upon scope destruction', function() {
            var eventType = 'jHipsterLigaBaloncestoApp:partidoUpdate';

            createController();
            expect($rootScope.$$listenerCount[eventType]).toEqual(1);

            $scope.$destroy();
            expect($rootScope.$$listenerCount[eventType]).toBeUndefined();
        });
    });
});
