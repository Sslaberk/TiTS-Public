package classes.Characters 
{
	import classes.Creature;
	import classes.Items.Melee.Fists;
	import classes.Items.Protection.DecentShield;
	import classes.kGAMECLASS;
	import classes.Util.RandomInCollection;
	
	import classes.Items.Guns.HammerPistol;
	import classes.Items.Guns.EagleHandgun;
	import classes.Items.Guns.LaserPistol;
	
	import classes.GLOBAL;
	
	/**
	 * ...
	 * @author Gedan
	 */
	
	public class NyreaBeta extends Creature
	{
		
		public function NyreaBeta() 
		{
			this._latestVersion = 1;
			this.version = this._latestVersion;
			this._neverSerialize = true; // Setting this will stop a given NPC class from ever being serialized.
			
			this.short = "beta nyrea";
			this.originalRace = "nyrea";
			this.a = "a ";
			this.capitalA = "A ";
			this.tallness = 72;
			this.scaleColor = "green";
			this.long = "This insectile woman looks like a black-armored amazon, tall and exceptionally buxom, with dark chitin plates covering her arms and legs, combining into an underbust corset of armor to protect her torso -- though conveniently leaving her big tits and groin exposed -- a groin which is sporting an impressive cock. Easily a foot long, her shaft is barely restrained by a padded chainmail bikini, though even partially covered you can see how thick and heavy it is. Even as one weapon draws your attention, the huntress moves with preternatural grace, circling you, probing at your defenses with her long, steel-tipped spear. Any hesitation, and weakness, and she'll be on you!";
			
			this.plural = false;
			this.lustVuln = 1;
			
			this.meleeWeapon = new Fists();
			
			this.physiqueRaw = 13;
			this.reflexesRaw = 13;
			this.aimRaw = 13;
			this.intelligenceRaw = 6;
			this.willpowerRaw = 6;
			this.libidoRaw = 40;
			this.shieldsRaw = t0
			this.energyRaw = 100;
			this.lustRaw = 10;
			this.resistances = new Array(1, 1, 1, 1, 1, 1, 1, 1);
			this.XPRaw = 60;
			this.level = 6;
			this.credits = 0;
			this.HPMod = 0;
			this.HPRaw = this.HPMax();
			
			this.femininity = 70;
			this.eyeType = 0;
			this.eyeColor = "red";
			this.thickness = 1;
			this.tone = 80;
			this.hairColor = "red";
			this.furColor = "tawny";
			this.hairLength = 0;
			this.hairType = 0;
			this.beardLength = 0;
			this.beardStyle = 0;
			this.skinType = GLOBAL.SKIN_TYPE_SCALES;
			this.skinTone = "pink";
			this.skinFlags = new Array();
			this.faceType = GLOBAL.TYPE_NYREA;
			this.faceFlags = new Array();
			this.tongueType = GLOBAL.TYPE_NYREA;
			this.lipMod = 1;
			this.earType = GLOBAL.TYPE_NYREA;
			this.antennae = 0;
			this.antennaeType = 0;
			this.horns = 0;
			this.hornType = 0;
			this.armType = 0;
			this.gills = false;
			this.wingType = 0;
			this.legType = GLOBAL.TYPE_NYREA;
			this.legCount = 2;
			this.legFlags = [];
			//0 - Waist
			//1 - Middle of a long tail. Defaults to waist on bipeds.
			//2 - Between last legs or at end of long tail.
			//3 - On underside of a tail, used for driders and the like, maybe?
			this.genitalSpot = 0;
			this.tailType = 0;
			this.tailCount = 0;
			this.tailFlags = [];
			
			//Used to set cunt or dick type for cunt/dick tails!
			this.tailGenitalArg = 0;
			//tailGenital:
			//0 - none.
			//1 - cock
			//2 - vagina
			this.tailGenital = 0;
			//Tail venom is a 0-100 slider used for tail attacks. Recharges per hour.
			this.tailVenom = 0;
			//Tail recharge determines how fast venom/webs comes back per hour.
			this.tailRecharge = 5;
			//hipRating
			//0 - boyish
			//2 - slender
			//4 - average
			//6 - noticable/ample
			//10 - curvy//flaring
			//15 - child-bearing/fertile
			//20 - inhumanly wide
			this.hipRatingRaw = 10;
			//buttRating
			//0 - buttless
			//2 - tight
			//4 - average
			//6 - noticable
			//8 - large
			//10 - jiggly
			//13 - expansive
			//16 - huge
			//20 - inconceivably large/big/huge etc
			this.buttRatingRaw = 10;
			//No dicks here!
			this.cocks = new Array();
			//balls
			this.balls = 0;
			this.cumMultiplierRaw = 1.5;
			//Multiplicative value used for impregnation odds. 0 is infertile. Higher is better.
			this.cumQualityRaw = 1;
			this.cumType = GLOBAL.FLUID_TYPE_CUM;
			this.ballSizeRaw = 2;
			this.ballFullness = 100;
			//How many "normal" orgams worth of jizz your balls can hold.
			this.ballEfficiency = 4;
			//Scales from 0 (never produce more) to infinity.
			this.refractoryRate = 9999;
			this.minutesSinceCum = 9000;
			this.timesCum = 122;
			this.cockVirgin = true;
			this.vaginalVirgin = false;
			this.analVirgin = true;
			//Goo is hyper friendly!
			this.elasticity = 3;
			//Fertility is a % out of 100. 
			this.fertilityRaw = 1;
			this.clitLength = .5;
			this.pregnancyMultiplierRaw = 1;
			
			this.breastRows[0].breastRatingRaw = 0;
			this.nippleColor = "green";
			this.milkMultiplier = 0;
			this.milkType = GLOBAL.FLUID_TYPE_MILK;
			this.milkRate = 1;
			this.ass.wetnessRaw = 0;
			
			this._isLoading = false;
		}
		
		override public function prepForCombat():void
		{
			var nyrea:NyreaBeta = this.makeCopy();
			
			nyrea.tallness = 60 + (rand(10) - 5);
			
			kGAMECLASS.foes.push(nyrea);
		}
		
	}

}