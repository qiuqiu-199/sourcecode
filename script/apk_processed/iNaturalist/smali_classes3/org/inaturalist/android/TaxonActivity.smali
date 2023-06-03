.class public Lorg/inaturalist/android/TaxonActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "TaxonActivity.java"

# interfaces
.implements Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;,
        Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;,
        Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;,
        Lorg/inaturalist/android/TaxonActivity$MonthAxisFormatter;,
        Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;,
        Lorg/inaturalist/android/TaxonActivity$HistogramReceiver;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_LINE_COLORS:[Ljava/lang/String;

.field public static DOWNLOAD_TAXON:Ljava/lang/String; = null

.field private static final MAX_TAXON_PHOTOS:I = 0x8

.field public static OBSERVATION:Ljava/lang/String; = null

.field public static final RESULT_COMPARE_TAXON:I = 0x1000

.field public static final SELECT_TAXON_REQUEST_CODE:I = 0x1001

.field private static TAG:Ljava/lang/String; = "TaxonActivity"

.field public static TAXON:Ljava/lang/String; = null

.field private static final TAXON_SEARCH_REQUEST_CODE:I = 0x12e

.field public static TAXON_SUGGESTION:Ljava/lang/String; = null

.field public static final TAXON_SUGGESTION_COMPARE_AND_SELECT:I = 0x1

.field public static final TAXON_SUGGESTION_NONE:I = 0x0

.field public static final TAXON_SUGGESTION_SELECT:I = 0x2


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mCompareTaxon:Landroid/view/ViewGroup;

.field private mConservationSource:Landroid/widget/TextView;

.field private mConservationStatus:Landroid/widget/TextView;

.field private mConservationStatusContainer:Landroid/view/ViewGroup;

.field public mDownloadTaxon:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHistogramReceiver:Lorg/inaturalist/android/TaxonActivity$HistogramReceiver;

.field public mIsTaxonomyListExpanded:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLoadingHistogram:Landroid/widget/ProgressBar;

.field private mLoadingPhotos:Landroid/widget/ProgressBar;

.field private mLoadingSeasonability:Landroid/widget/ProgressBar;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field public mMapBoundsSet:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mNoPhotosContainer:Landroid/view/ViewGroup;

.field public mObservation:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mPhotosContainer:Landroid/view/ViewGroup;

.field private mPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

.field private mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

.field private mPopularFieldsByAttributes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mResearchGradeHistogram:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSeasonabilityGraph:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mikephil/charting/charts/LineChart;",
            ">;"
        }
    .end annotation
.end field

.field private mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

.field private mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

.field private mSelectTaxon:Landroid/view/ViewGroup;

.field public mTaxon:Lorg/inaturalist/android/BetterJSONObject;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$BetterJSONObjectBundler;
    .end annotation
.end field

.field private mTaxonBoundsReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

.field private mTaxonButtons:Landroid/view/ViewGroup;

.field private mTaxonInactive:Landroid/view/ViewGroup;

.field private mTaxonName:Landroid/widget/TextView;

.field private mTaxonReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

.field private mTaxonScientificName:Landroid/widget/TextView;

.field public mTaxonSuggestion:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mTaxonicIcon:Landroid/widget/ImageView;

.field private mTaxonomyIcon:Landroid/widget/ImageView;

.field private mTaxonomyList:Landroid/widget/ListView;

.field private mViewOnINat:Landroid/view/ViewGroup;

.field private mWikipediaSummary:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    .line 93
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#1f77b4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#ff7f0e"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "#2ca02c"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "#d62728"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "#9467bd"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "#8c564b"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "#e377c2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "#7f7f7f"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "#bcbd22"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "#17becf"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/TaxonActivity;->ATTRIBUTE_LINE_COLORS:[Ljava/lang/String;

    const-string v0, "taxon"

    .line 104
    sput-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    const-string v0, "observation"

    .line 105
    sput-object v0, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    const-string v0, "download_taxon"

    .line 106
    sput-object v0, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const-string v0, "taxon_suggestion"

    .line 107
    sput-object v0, Lorg/inaturalist/android/TaxonActivity;->TAXON_SUGGESTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lorg/inaturalist/android/TaxonActivity;->mMapBoundsSet:Z

    .line 144
    iput v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonSuggestion:I

    .line 145
    iput-boolean v0, p0, Lorg/inaturalist/android/TaxonActivity;->mIsTaxonomyListExpanded:Z

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mHistogram:Ljava/util/List;

    .line 149
    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mResearchGradeHistogram:Ljava/util/List;

    .line 150
    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 86
    sget-object v0, Lorg/inaturalist/android/TaxonActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$102(Lorg/inaturalist/android/TaxonActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mResearchGradeHistogram:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->loadTaxon()V

    return-void
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonBoundsReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

    return-object p0
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/TaxonActivity;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p0
.end method

.method static synthetic access$1302(Lorg/inaturalist/android/TaxonActivity;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->centerObservation()V

    return-void
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/TaxonActivity;)Landroid/widget/ScrollView;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$202(Lorg/inaturalist/android/TaxonActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mHistogram:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lorg/inaturalist/android/TaxonActivity;)Ljava/util/TreeMap;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/TaxonActivity;Ljava/util/TreeMap;)Ljava/util/TreeMap;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    return-object p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/TaxonActivity;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->refreshSeasonality()V

    return-void
.end method

.method static synthetic access$500(Lorg/inaturalist/android/TaxonActivity;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$602(Lorg/inaturalist/android/TaxonActivity;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingHistogram:Landroid/widget/ProgressBar;

    return-object p1
.end method

.method static synthetic access$700(Lorg/inaturalist/android/TaxonActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityGraph:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/TaxonActivity;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->refreshSeasonalityChart(I)V

    return-void
.end method

.method static synthetic access$900(Lorg/inaturalist/android/TaxonActivity;)Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;
    .locals 0

    .line 86
    iget-object p0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

    return-object p0
.end method

.method private addTab(ILjava/lang/String;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    .line 311
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    return-void
.end method

.method private centerObservation()V
    .locals 7

    .line 970
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 973
    new-instance v0, Lorg/inaturalist/android/Observation;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 974
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lorg/inaturalist/android/ActivityHelper;->addMapPosition(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;Lorg/inaturalist/android/BetterJSONObject;ZZ)V

    .line 975
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v2, v0}, Lorg/inaturalist/android/ActivityHelper;->centerObservation(Lcom/google/android/gms/maps/GoogleMap;Lorg/inaturalist/android/Observation;)V

    :cond_0
    return-void
.end method

.method private conservationStatusCodeToName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 804
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x86f

    if-eq v0, v1, :cond_6

    const/16 v1, 0x880

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8a9

    if-eq v0, v1, :cond_4

    const/16 v1, 0x977

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9b7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9c6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xabf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "EX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x8

    goto :goto_1

    :pswitch_1
    const-string v0, "EW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    goto :goto_1

    :cond_0
    const-string v0, "VU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "NT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "NE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const-string v0, "LC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    const-string v0, "EN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x5

    goto :goto_1

    :cond_5
    const-string v0, "DD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_6
    const-string v0, "CR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x6

    goto :goto_1

    :cond_7
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return-object p1

    :pswitch_2
    const-string p1, "extinct"

    return-object p1

    :pswitch_3
    const-string p1, "extinct_in_the_wild"

    return-object p1

    :pswitch_4
    const-string p1, "critically_endangered"

    return-object p1

    :pswitch_5
    const-string p1, "endangered"

    return-object p1

    :pswitch_6
    const-string p1, "vulnerable"

    return-object p1

    :pswitch_7
    const-string p1, "near_threatened"

    return-object p1

    :pswitch_8
    const-string p1, "least_concern"

    return-object p1

    :pswitch_9
    const-string p1, "data_deficient"

    return-object p1

    :pswitch_a
    const-string p1, "not_evaluated"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8b2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private initSeasonabilityCharts()V
    .locals 2

    .line 231
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonActivity$1;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    .line 250
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 252
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/TaxonActivity$2;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    .line 265
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private loadTaxon()V
    .locals 12

    .line 829
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->finish()V

    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 838
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonName:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 839
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonScientificName:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 842
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonScientificName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 843
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonName:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 848
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v1, "wikipedia_summary"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 850
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 853
    :cond_2
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mWikipediaSummary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 854
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mWikipediaSummary:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f10033b

    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 851
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mWikipediaSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 858
    :goto_2
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "conservation_status"

    invoke-virtual {v0, v3}, Lorg/inaturalist/android/BetterJSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "conservation_status"

    invoke-virtual {v0, v4}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_5

    const-string v4, "status"

    .line 859
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/inaturalist/android/TaxonActivity;->conservationStatusCodeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_5
    move-object v4, v3

    .line 862
    :goto_4
    iget-object v5, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonInactive:Landroid/view/ViewGroup;

    iget-object v6, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v6}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "is_active"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x8

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 864
    iget-object v5, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonInactive:Landroid/view/ViewGroup;

    new-instance v6, Lorg/inaturalist/android/TaxonActivity$9;

    invoke-direct {v6, p0}, Lorg/inaturalist/android/TaxonActivity$9;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_8

    const-string v5, "not_evaluated"

    .line 881
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "data_deficient"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "least_concern"

    .line 882
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto/16 :goto_6

    .line 885
    :cond_7
    iget-object v5, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatusContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 887
    iget-object v5, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conservation_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_text"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/INaturalistApp;->getColorResourceByName(Ljava/lang/String;)I

    move-result v5

    .line 888
    iget-object v6, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "conservation_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_bg"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/inaturalist/android/INaturalistApp;->getColorResourceByName(Ljava/lang/String;)I

    move-result v6

    .line 890
    iget-object v7, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatus:Landroid/widget/TextView;

    iget-object v9, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "conservation_status_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 891
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatusContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 892
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 893
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationSource:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 894
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationSource:Landroid/widget/TextView;

    const v6, 0x7f1000f2

    invoke-virtual {p0, v6}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const-string v9, "authority"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f08022f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 896
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 897
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationSource:Landroid/widget/TextView;

    invoke-virtual {v4, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 883
    :cond_8
    :goto_6
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatusContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 900
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    new-instance v3, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;

    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v4}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lorg/inaturalist/android/TaxonActivity$TaxonPhotosPagerAdapter;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v3}, Luk/co/senab/photoview/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 901
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0, v3}, Lcom/viewpagerindicator/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 902
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v0, v2}, Luk/co/senab/photoview/HackyViewPager;->setVisibility(I)V

    .line 903
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 910
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v3}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-gt v3, v8, :cond_a

    .line 911
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v3, v1}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    const/16 v3, 0x136

    .line 914
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v4}, Luk/co/senab/photoview/HackyViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_b

    .line 915
    iget-boolean v4, p0, Lorg/inaturalist/android/TaxonActivity;->mDownloadTaxon:Z

    if-eqz v4, :cond_9

    .line 917
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 918
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    invoke-virtual {v2, v1}, Luk/co/senab/photoview/HackyViewPager;->setVisibility(I)V

    goto :goto_8

    .line 921
    :cond_9
    iget-object v4, p0, Lorg/inaturalist/android/TaxonActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 922
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_8

    .line 926
    :cond_a
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/CirclePageIndicator;->setVisibility(I)V

    const/16 v3, 0x140

    :cond_b
    :goto_8
    int-to-float v1, v3

    .line 930
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v8, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 931
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 934
    new-instance v0, Lorg/inaturalist/android/TaxonomyAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v0, p0, v1, p0}, Lorg/inaturalist/android/TaxonomyAdapter;-><init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;Lorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;)V

    .line 936
    iget-boolean v1, p0, Lorg/inaturalist/android/TaxonActivity;->mIsTaxonomyListExpanded:Z

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/TaxonomyAdapter;->setExpanded(Z)V

    .line 937
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonomyList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 939
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonomyList:Landroid/widget/ListView;

    invoke-static {v0}, Lorg/inaturalist/android/ActivityHelper;->resizeList(Landroid/widget/ListView;)V

    .line 941
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonicIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lorg/inaturalist/android/TaxonUtils;->observationIcon(Lorg/json/JSONObject;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 943
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->centerObservation()V

    return-void
.end method

.method private refreshSeasonality()V
    .locals 5

    .line 269
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingSeasonability:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingSeasonability:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    add-int/2addr v3, v1

    const/4 v4, 0x0

    check-cast v4, Lcom/github/mikephil/charting/charts/LineChart;

    invoke-static {v3, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityGraph:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;

    invoke-direct {v0, p0, p0}, Lorg/inaturalist/android/TaxonActivity$SeasonabilityPagerAdapter;-><init>(Lorg/inaturalist/android/TaxonActivity;Landroid/content/Context;)V

    .line 285
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 286
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    const v0, 0x7f100317

    .line 289
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lorg/inaturalist/android/TaxonActivity;->addTab(ILjava/lang/String;)V

    .line 292
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    invoke-direct {p0, v2, v3}, Lorg/inaturalist/android/TaxonActivity;->addTab(ILjava/lang/String;)V

    add-int/2addr v2, v1

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    goto :goto_2

    .line 300
    :cond_2
    invoke-direct {p0, v2}, Lorg/inaturalist/android/TaxonActivity;->refreshSeasonalityChart(I)V

    .line 302
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 303
    invoke-direct {p0, v2}, Lorg/inaturalist/android/TaxonActivity;->refreshSeasonalityChart(I)V

    add-int/2addr v2, v1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private refreshSeasonalityChart(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 315
    iget-object v2, v1, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityGraph:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v2, v1, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityGraph:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/mikephil/charting/charts/LineChart;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/16 v4, 0xc

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v0, :cond_7

    .line 323
    iget-object v7, v1, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v7

    sub-int/2addr v0, v5

    aget-object v0, v7, v0

    check-cast v0, Ljava/lang/String;

    .line 326
    iget-object v7, v1, Lorg/inaturalist/android/TaxonActivity;->mPopularFieldsByAttributes:Ljava/util/TreeMap;

    invoke-virtual {v7, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 328
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v9}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 332
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 333
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 334
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v4, :cond_2

    .line 337
    new-instance v15, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v3, v14

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v15, v3, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v14, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v14, v14, 0x1

    const/16 v4, 0xc

    goto :goto_1

    .line 342
    :cond_2
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    invoke-direct {v3, v13, v11}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 343
    sget-object v4, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 344
    sget-object v4, Lorg/inaturalist/android/TaxonActivity;->ATTRIBUTE_LINE_COLORS:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 345
    sget-object v4, Lorg/inaturalist/android/TaxonActivity;->ATTRIBUTE_LINE_COLORS:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 346
    sget-object v4, Lorg/inaturalist/android/TaxonActivity;->ATTRIBUTE_LINE_COLORS:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 347
    sget-object v4, Lorg/inaturalist/android/TaxonActivity;->ATTRIBUTE_LINE_COLORS:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleColor(I)V

    .line 348
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 349
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 350
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 351
    sget-object v4, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 353
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v10, v5

    const/16 v4, 0xc

    goto/16 :goto_0

    .line 358
    :cond_3
    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mHistogram:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    const/16 v4, 0xc

    if-ge v3, v4, :cond_5

    .line 362
    iget-object v4, v1, Lorg/inaturalist/android/TaxonActivity;->mHistogram:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v4, v9

    .line 363
    new-instance v9, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v10, v3

    if-gez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    int-to-float v4, v4

    :goto_3
    invoke-direct {v9, v10, v4}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 365
    :cond_5
    new-instance v3, Lcom/github/mikephil/charting/data/LineDataSet;

    const v4, 0x7f100261

    invoke-virtual {v1, v4}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const-string v0, "#D3D3D3"

    .line 367
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const-string v0, "#D3D3D3"

    .line 368
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    const-string v0, "#D3D3D3"

    .line 369
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    const-string v0, "#D3D3D3"

    .line 370
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleColor(I)V

    .line 371
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 372
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 373
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 374
    sget-object v0, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 376
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_6
    new-instance v0, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v0, v7}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 380
    invoke-virtual {v2, v0}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto/16 :goto_6

    :cond_7
    if-nez v0, :cond_c

    .line 383
    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mHistogram:Ljava/util/List;

    const/16 v3, 0x8

    if-eqz v0, :cond_a

    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mResearchGradeHistogram:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mLoadingHistogram:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mLoadingHistogram:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 385
    invoke-virtual {v2, v6}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 391
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_4
    const/16 v7, 0xc

    if-ge v4, v7, :cond_8

    .line 394
    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v8, v4

    iget-object v9, v1, Lorg/inaturalist/android/TaxonActivity;->mHistogram:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 398
    :cond_8
    new-instance v4, Lcom/github/mikephil/charting/data/LineDataSet;

    const v7, 0x7f100396

    invoke-virtual {v1, v7}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 399
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    const-string v3, "#D3D3D3"

    .line 400
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    const-string v3, "#D3D3D3"

    .line 401
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    const-string v3, "#D3D3D3"

    .line 402
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleColor(I)V

    .line 403
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 404
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 405
    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 408
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_5
    const/16 v7, 0xc

    if-ge v4, v7, :cond_9

    .line 414
    new-instance v7, Lcom/github/mikephil/charting/data/Entry;

    int-to-float v8, v4

    iget-object v9, v1, Lorg/inaturalist/android/TaxonActivity;->mResearchGradeHistogram:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v7, v8, v9}, Lcom/github/mikephil/charting/data/Entry;-><init>(FF)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 418
    :cond_9
    new-instance v4, Lcom/github/mikephil/charting/data/LineDataSet;

    const v7, 0x7f1002fd

    invoke-virtual {v1, v7}, Lorg/inaturalist/android/TaxonActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v3, v7}, Lcom/github/mikephil/charting/data/LineDataSet;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 419
    sget-object v3, Lcom/github/mikephil/charting/components/YAxis$AxisDependency;->LEFT:Lcom/github/mikephil/charting/components/YAxis$AxisDependency;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setAxisDependency(Lcom/github/mikephil/charting/components/YAxis$AxisDependency;)V

    .line 420
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f060086

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setFillColor(I)V

    .line 421
    invoke-virtual {v4, v5}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawFilled(Z)V

    .line 422
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setColor(I)V

    .line 423
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setDrawValues(Z)V

    .line 424
    invoke-virtual {v4, v6}, Lcom/github/mikephil/charting/data/LineDataSet;->setHighlightEnabled(Z)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleColor(I)V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/TaxonActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setCircleHoleColor(I)V

    .line 427
    sget-object v3, Lcom/github/mikephil/charting/data/LineDataSet$Mode;->CUBIC_BEZIER:Lcom/github/mikephil/charting/data/LineDataSet$Mode;

    invoke-virtual {v4, v3}, Lcom/github/mikephil/charting/data/LineDataSet;->setMode(Lcom/github/mikephil/charting/data/LineDataSet$Mode;)V

    .line 429
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    new-instance v3, Lcom/github/mikephil/charting/data/LineData;

    invoke-direct {v3, v0}, Lcom/github/mikephil/charting/data/LineData;-><init>(Ljava/util/List;)V

    .line 432
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setData(Lcom/github/mikephil/charting/data/ChartData;)V

    goto :goto_6

    .line 435
    :cond_a
    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mLoadingHistogram:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mLoadingHistogram:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 436
    :cond_b
    invoke-virtual {v2, v3}, Lcom/github/mikephil/charting/charts/LineChart;->setVisibility(I)V

    .line 442
    :cond_c
    :goto_6
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getXAxis()Lcom/github/mikephil/charting/components/XAxis;

    move-result-object v3

    .line 443
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$MonthAxisFormatter;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/TaxonActivity$MonthAxisFormatter;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/components/XAxis;->setValueFormatter(Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;)V

    .line 444
    sget-object v0, Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;->BOTTOM:Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;

    invoke-virtual {v3, v0}, Lcom/github/mikephil/charting/components/XAxis;->setPosition(Lcom/github/mikephil/charting/components/XAxis$XAxisPosition;)V

    .line 445
    invoke-virtual {v3, v5}, Lcom/github/mikephil/charting/components/XAxis;->setGranularityEnabled(Z)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 446
    invoke-virtual {v3, v4}, Lcom/github/mikephil/charting/components/XAxis;->setGranularity(F)V

    const/16 v0, 0xc

    .line 447
    invoke-virtual {v3, v0, v5}, Lcom/github/mikephil/charting/components/XAxis;->setLabelCount(IZ)V

    .line 448
    invoke-virtual {v3, v6}, Lcom/github/mikephil/charting/components/XAxis;->setDrawGridLines(Z)V

    .line 450
    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v7, "observed_on"

    invoke-virtual {v0, v7}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 454
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    .line 457
    :try_start_0
    iget-object v8, v1, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    const-string v9, "observed_on"

    invoke-virtual {v8, v9}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    move-object v0, v7

    :goto_7
    if-eqz v0, :cond_e

    .line 463
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 464
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x5

    .line 465
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 466
    invoke-virtual {v7, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v9, 0x2

    .line 468
    invoke-virtual {v7, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v8

    div-float/2addr v8, v0

    add-float/2addr v7, v8

    const/high16 v0, 0x41300000    # 11.0f

    cmpl-float v8, v7, v0

    if-lez v8, :cond_d

    goto :goto_8

    :cond_d
    move v0, v7

    .line 472
    :goto_8
    new-instance v7, Lcom/github/mikephil/charting/components/LimitLine;

    const-string v8, ""

    invoke-direct {v7, v0, v8}, Lcom/github/mikephil/charting/components/LimitLine;-><init>(FLjava/lang/String;)V

    .line 474
    iget-object v0, v1, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    new-instance v8, Lorg/inaturalist/android/Observation;

    iget-object v9, v1, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v8, v9}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    invoke-virtual {v0, v8}, Lorg/inaturalist/android/ActivityHelper;->observationColor(Lorg/inaturalist/android/Observation;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/github/mikephil/charting/components/LimitLine;->setLineColor(I)V

    .line 475
    invoke-virtual {v7, v4}, Lcom/github/mikephil/charting/components/LimitLine;->setLineWidth(F)V

    .line 477
    invoke-virtual {v3, v7}, Lcom/github/mikephil/charting/components/XAxis;->addLimitLine(Lcom/github/mikephil/charting/components/LimitLine;)V

    .line 482
    :cond_e
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisLeft()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 483
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 484
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    const/4 v3, 0x0

    .line 485
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 486
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 488
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getAxisRight()Lcom/github/mikephil/charting/components/YAxis;

    move-result-object v0

    .line 489
    invoke-virtual {v0, v5}, Lcom/github/mikephil/charting/components/YAxis;->setGranularityEnabled(Z)V

    .line 490
    invoke-virtual {v0, v4}, Lcom/github/mikephil/charting/components/YAxis;->setGranularity(F)V

    .line 491
    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/YAxis;->setAxisMinimum(F)V

    .line 492
    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/YAxis;->setDrawGridLines(Z)V

    .line 495
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getDescription()Lcom/github/mikephil/charting/components/Description;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/github/mikephil/charting/components/Description;->setEnabled(Z)V

    .line 497
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    sget-object v3, Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;->BOTTOM:Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setVerticalAlignment(Lcom/github/mikephil/charting/components/Legend$LegendVerticalAlignment;)V

    .line 498
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setFormToTextSpace(F)V

    .line 499
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->getLegend()Lcom/github/mikephil/charting/components/Legend;

    move-result-object v0

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v0, v3}, Lcom/github/mikephil/charting/components/Legend;->setTextSize(F)V

    const/16 v0, 0x1f4

    .line 501
    invoke-virtual {v2, v0, v0}, Lcom/github/mikephil/charting/charts/LineChart;->animateXY(II)V

    .line 504
    invoke-virtual {v2}, Lcom/github/mikephil/charting/charts/LineChart;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 1164
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x12e

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    .line 1169
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1170
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 1171
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/TaxonActivity;->setResult(ILandroid/content/Intent;)V

    .line 1174
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->finish()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1001

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 1179
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1180
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 1181
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/TaxonActivity;->setResult(ILandroid/content/Intent;)V

    .line 1184
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x5

    .line 625
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonActivity;->requestWindowFeature(I)Z

    const/4 v0, 0x2

    .line 626
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/TaxonActivity;->requestWindowFeature(I)Z

    .line 628
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 629
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 631
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 633
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 634
    new-instance v1, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 636
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 639
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    .line 640
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    .line 641
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/TaxonActivity;->mDownloadTaxon:Z

    .line 642
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->TAXON_SUGGESTION:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonSuggestion:I

    .line 643
    iput-boolean v2, p0, Lorg/inaturalist/android/TaxonActivity;->mMapBoundsSet:Z

    .line 644
    iput-boolean v2, p0, Lorg/inaturalist/android/TaxonActivity;->mIsTaxonomyListExpanded:Z

    :cond_0
    const p1, 0x7f0d00e3

    .line 647
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->setContentView(I)V

    const p1, 0x7f0a0318

    .line 649
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/design/widget/TabLayout;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityTabLayout:Landroid/support/design/widget/TabLayout;

    const p1, 0x7f0a0319

    .line 650
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v4/view/ViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mSeasonabilityViewPager:Landroid/support/v4/view/ViewPager;

    const p1, 0x7f0a01cd

    .line 651
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingSeasonability:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0304

    .line 653
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mScrollView:Landroid/widget/ScrollView;

    const p1, 0x7f0a038f

    .line 654
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a0254

    .line 655
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mNoPhotosContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a038e

    .line 656
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Luk/co/senab/photoview/HackyViewPager;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosViewPager:Luk/co/senab/photoview/HackyViewPager;

    const p1, 0x7f0a0299

    .line 657
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/viewpagerindicator/CirclePageIndicator;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mPhotosIndicator:Lcom/viewpagerindicator/CirclePageIndicator;

    const p1, 0x7f0a038a

    .line 658
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonName:Landroid/widget/TextView;

    const p1, 0x7f0a0392

    .line 659
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonScientificName:Landroid/widget/TextView;

    const p1, 0x7f0a03e8

    .line 660
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mWikipediaSummary:Landroid/widget/TextView;

    const p1, 0x7f0a00d3

    .line 661
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatusContainer:Landroid/view/ViewGroup;

    const p1, 0x7f0a00d2

    .line 662
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationStatus:Landroid/widget/TextView;

    const p1, 0x7f0a00d1

    .line 663
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mConservationSource:Landroid/widget/TextView;

    .line 664
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const v1, 0x7f0a0270

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ScrollableMapFragment;

    new-instance v3, Lorg/inaturalist/android/TaxonActivity$3;

    invoke-direct {v3, p0, v0}, Lorg/inaturalist/android/TaxonActivity$3;-><init>(Lorg/inaturalist/android/TaxonActivity;Landroid/support/v7/app/ActionBar;)V

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/ScrollableMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    const p1, 0x7f0a03de

    .line 709
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mViewOnINat:Landroid/view/ViewGroup;

    const p1, 0x7f0a01cb

    .line 710
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mLoadingPhotos:Landroid/widget/ProgressBar;

    const p1, 0x7f0a0380

    .line 711
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonButtons:Landroid/view/ViewGroup;

    const p1, 0x7f0a0322

    .line 712
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mSelectTaxon:Landroid/view/ViewGroup;

    const p1, 0x7f0a00ce

    .line 713
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mCompareTaxon:Landroid/view/ViewGroup;

    const p1, 0x7f0a0385

    .line 714
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonicIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0388

    .line 715
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonInactive:Landroid/view/ViewGroup;

    .line 717
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonButtons:Landroid/view/ViewGroup;

    iget v3, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonSuggestion:I

    const/16 v4, 0x8

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 719
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mSelectTaxon:Landroid/view/ViewGroup;

    new-instance v3, Lorg/inaturalist/android/TaxonActivity$4;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/TaxonActivity$4;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mCompareTaxon:Landroid/view/ViewGroup;

    iget v3, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonSuggestion:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 741
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mCompareTaxon:Landroid/view/ViewGroup;

    new-instance v2, Lorg/inaturalist/android/TaxonActivity$5;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/TaxonActivity$5;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mViewOnINat:Landroid/view/ViewGroup;

    new-instance v2, Lorg/inaturalist/android/TaxonActivity$6;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/TaxonActivity$6;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a0394

    .line 768
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonomyIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a0395

    .line 769
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/TaxonActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonomyList:Landroid/widget/ListView;

    .line 771
    iget-object p1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonomyIcon:Landroid/widget/ImageView;

    new-instance v2, Lorg/inaturalist/android/TaxonActivity$7;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/TaxonActivity$7;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ScrollableMapFragment;

    new-instance v1, Lorg/inaturalist/android/TaxonActivity$8;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/TaxonActivity$8;-><init>(Lorg/inaturalist/android/TaxonActivity;)V

    .line 786
    invoke-virtual {p1, v1}, Lorg/inaturalist/android/ScrollableMapFragment;->setListener(Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;)V

    .line 794
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    const p1, 0x7f08014e

    .line 795
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 796
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 798
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->loadTaxon()V

    .line 800
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->initSeasonabilityCharts()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 981
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 986
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 983
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/TaxonActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 1001
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 1003
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonBoundsReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 1004
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 1009
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 1011
    iget-boolean v0, p0, Lorg/inaturalist/android/TaxonActivity;->mMapBoundsSet:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1013
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;-><init>(Lorg/inaturalist/android/TaxonActivity;Lorg/inaturalist/android/TaxonActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonBoundsReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

    .line 1014
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "taxon_observation_bounds_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1015
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonBoundsReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonBoundsReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1017
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_OBSERVATION_BOUNDS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "taxon_id"

    .line 1018
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1019
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1023
    :cond_0
    iget-boolean v0, p0, Lorg/inaturalist/android/TaxonActivity;->mDownloadTaxon:Z

    if-eqz v0, :cond_1

    .line 1025
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;-><init>(Lorg/inaturalist/android/TaxonActivity;Lorg/inaturalist/android/TaxonActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

    .line 1026
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "action_get_taxon_new_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1027
    sget-object v2, Lorg/inaturalist/android/TaxonActivity;->TAG:Ljava/lang/String;

    const-string v3, "Registering ACTION_GET_TAXON_NEW_RESULT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonReceiver:Lorg/inaturalist/android/TaxonActivity$TaxonReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1030
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON_NEW:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "taxon_id"

    .line 1031
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1032
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1039
    :cond_1
    new-instance v0, Lorg/inaturalist/android/TaxonActivity$HistogramReceiver;

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/TaxonActivity$HistogramReceiver;-><init>(Lorg/inaturalist/android/TaxonActivity;Lorg/inaturalist/android/TaxonActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mHistogramReceiver:Lorg/inaturalist/android/TaxonActivity$HistogramReceiver;

    .line 1040
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "histogram_result"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "popular_field_values_result"

    .line 1041
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1042
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mHistogramReceiver:Lorg/inaturalist/android/TaxonActivity$HistogramReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 1044
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_HISTOGRAM:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "taxon_id"

    .line 1045
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1046
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1048
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_HISTOGRAM:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "taxon_id"

    .line 1049
    iget-object v3, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "research_grade"

    const/4 v3, 0x1

    .line 1050
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1051
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1053
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_POPULAR_FIELD_VALUES:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taxon_id"

    .line 1054
    iget-object v2, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1055
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1057
    invoke-direct {p0}, Lorg/inaturalist/android/TaxonActivity;->refreshSeasonality()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 993
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonomyList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/TaxonomyAdapter;

    invoke-virtual {v0}, Lorg/inaturalist/android/TaxonomyAdapter;->isExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lorg/inaturalist/android/TaxonActivity;->mIsTaxonomyListExpanded:Z

    .line 995
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 996
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 156
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 157
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 164
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 165
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method

.method public onViewChildren(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 2

    .line 948
    new-instance p1, Lorg/inaturalist/android/TaxonomyAdapter;

    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1, p0}, Lorg/inaturalist/android/TaxonomyAdapter;-><init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;ZLorg/inaturalist/android/TaxonomyAdapter$TaxonomyListener;)V

    .line 951
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonScientificName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 955
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxon:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 957
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/TaxonActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    invoke-virtual {v1, v0, p1}, Lorg/inaturalist/android/ActivityHelper;->selection(Ljava/lang/String;Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onViewTaxon(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 3

    .line 962
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 963
    sget-object v1, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 964
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->TAXON_SUGGESTION:Ljava/lang/String;

    iget v2, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonSuggestion:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/inaturalist/android/TaxonActivity;->mTaxonSuggestion:I

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x1001

    .line 966
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/TaxonActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
