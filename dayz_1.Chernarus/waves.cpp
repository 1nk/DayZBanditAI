class CfgPatches
{
	class TF13_Waves
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {"CAData"};
	};
};
class CfgWorlds
{
	class DefaultWorld
	{
		class Weather
		{
			class Overcast
			{
				class Weather1;
				class Weather2;
				class Weather3;
				class Weather4;
				class Weather5;
			};
		};
	};
	class CAWorld: DefaultWorld
	{
		class Weather: Weather
		{
			class Overcast: Overcast
			{
				class Weather1: Weather1
				{
					waves = 0.2;
				};
				class Weather7: Weather1
				{
					waves = 0.2;
				};
				class Weather2: Weather2
				{
					waves = 0.22;
				};
				class Weather3: Weather3
				{
					waves = 0.32;
				};
				class Weather4: Weather4
				{
					waves = 0.52;
				};
				class Weather5: Weather5
				{
					waves = 0.72;
				};
				class Weather6: Weather5
				{
					waves = 2.00;
				};
			};
		};
	};
};