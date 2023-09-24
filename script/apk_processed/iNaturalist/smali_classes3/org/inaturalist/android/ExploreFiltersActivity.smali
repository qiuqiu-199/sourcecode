.class public Lorg/inaturalist/android/ExploreFiltersActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ExploreFiltersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;,
        Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;
    }
.end annotation


# static fields
.field public static final ALL_ANNOTATIONS:Ljava/lang/String; = "all_annotations"

.field private static final ICONIC_TAXA:[Ljava/lang/String;

.field private static final REQUEST_CODE_SEARCH_PROJECTS:I = 0x1000

.field private static final REQUEST_CODE_SEARCH_USERS:I = 0x1001

.field public static final SEARCH_FILTERS:Ljava/lang/String; = "search_filters"


# instance fields
.field public mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mAnnotationEqual:Landroid/widget/TextView;

.field private mAnnotationName:Landroid/widget/Spinner;

.field private mAnnotationValue:Landroid/widget/Spinner;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mApplyFilters:Landroid/widget/Button;

.field private mCasualGradeCheckbox:Landroid/view/View;

.field private mClearProject:Landroid/widget/ImageView;

.field private mClearUser:Landroid/widget/ImageView;

.field private mDateAny:Landroid/widget/TextView;

.field private mDateExact:Landroid/widget/Spinner;

.field private mDateMax:Landroid/widget/Spinner;

.field private mDateMin:Landroid/widget/Spinner;

.field private mDateMonths:Landroid/widget/Spinner;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mNeedsIdCheckbox:Landroid/view/View;

.field private mOptionDateAny:Landroid/widget/RadioButton;

.field private mOptionDateExact:Landroid/widget/RadioButton;

.field private mOptionDateMinMax:Landroid/widget/RadioButton;

.field private mOptionDateMonths:Landroid/widget/RadioButton;

.field private mProjectName:Landroid/widget/TextView;

.field private mProjectPic:Landroid/widget/ImageView;

.field private mResearchGradeCheckbox:Landroid/view/View;

.field private mResetFilters:Landroid/view/MenuItem;

.field public mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mShowMyObservationsCheckbox:Landroid/view/View;

.field private mShowMyObservationsRow:Landroid/view/ViewGroup;

.field private mTaxonicIcons:Landroid/support/v7/widget/RecyclerView;

.field private mUserName:Landroid/widget/TextView;

.field private mUserPic:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Plantae"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Aves"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Insecta"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Amphibia"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Reptilia"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Fungi"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Animalia"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Chromista"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Protozoa"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Actinopterygii"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Mammalia"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Mollusca"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Arachnida"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lorg/inaturalist/android/ExploreFiltersActivity;->ICONIC_TAXA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateAny:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V

    return-void
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mTaxonicIcons:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshResetFiltersButton()V

    return-void
.end method

.method static synthetic access$1300(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateExact:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMinMax:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/RadioButton;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMonths:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsCheckbox:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResearchGradeCheckbox:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/view/View;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mNeedsIdCheckbox:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateExact:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMin:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMax:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ExploreFiltersActivity;I)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->monthToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ExploreFiltersActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method private monthToString(I)Ljava/lang/String;
    .locals 2

    .line 708
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x2

    .line 709
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 711
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM"

    invoke-direct {p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private refreshResetFiltersButton()V
    .locals 2

    .line 702
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResetFilters:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResetFilters:Landroid/view/MenuItem;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {v1}, Lorg/inaturalist/android/ExploreSearchFilters;->isDirty()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private refreshViewState()V
    .locals 8

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 546
    :goto_0
    sget-object v3, Lorg/inaturalist/android/ExploreFiltersActivity;->ICONIC_TAXA:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 547
    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lorg/inaturalist/android/ExploreFiltersActivity;->ICONIC_TAXA:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, v5, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    sget-object v6, Lorg/inaturalist/android/ExploreFiltersActivity;->ICONIC_TAXA:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mTaxonicIcons:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;

    new-instance v4, Lorg/inaturalist/android/ExploreFiltersActivity$14;

    invoke-direct {v4, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$14;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-direct {v3, p0, v0, v4}, Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lorg/inaturalist/android/ExploreFiltersActivity$IconicTaxonAdapter$OnIconicTaxonSelected;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 564
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const/4 v2, 0x0

    const v3, 0x7f08026b

    const/16 v4, 0x8

    if-nez v0, :cond_1

    .line 565
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearProject:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectName:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 568
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectPic:Landroid/widget/ImageView;

    const-string v3, "#5D5D5D"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_3

    .line 570
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearProject:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 571
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectName:Landroid/widget/TextView;

    iget-object v5, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v5, v5, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const-string v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 574
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const-string v5, "icon"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const-string v5, "icon"

    :goto_1
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const-string v5, "icon_url"

    goto :goto_1

    :goto_2
    if-nez v0, :cond_3

    .line 576
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 578
    :cond_3
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v5

    .line 579
    invoke-virtual {v5, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 580
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectPic:Landroid/widget/ImageView;

    .line 581
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 586
    :goto_3
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const v3, 0x7f080132

    const/4 v5, 0x1

    if-nez v0, :cond_4

    .line 587
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearUser:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserPic:Landroid/widget/ImageView;

    const-string v2, "#5D5D5D"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 591
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsCheckbox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    goto/16 :goto_8

    .line 593
    :cond_4
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearUser:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserName:Landroid/widget/TextView;

    iget-object v6, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v6, v6, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v7, "login"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 597
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v2, "icon"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v2, "icon"

    :goto_4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v2, "icon_url"

    goto :goto_4

    :goto_5
    if-eqz v0, :cond_7

    .line 598
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_6

    .line 601
    :cond_6
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    .line 602
    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 603
    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 604
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 605
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v2, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;

    invoke-direct {v2}, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;-><init>()V

    .line 606
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserPic:Landroid/widget/ImageView;

    .line 607
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_7

    .line 599
    :cond_7
    :goto_6
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserPic:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 610
    :goto_7
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v2, "login"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v2}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 612
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsCheckbox:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    goto :goto_8

    .line 614
    :cond_8
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsCheckbox:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 618
    :goto_8
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResearchGradeCheckbox:Landroid/view/View;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v3, "research"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 619
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mNeedsIdCheckbox:Landroid/view/View;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v3, "needs_id"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 620
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mCasualGradeCheckbox:Landroid/view/View;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v3, "casual"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 622
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateAny:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 623
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateExact:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 624
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMinMax:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 625
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMonths:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 627
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_9

    .line 638
    :pswitch_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMonths:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 635
    :pswitch_1
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMinMax:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 632
    :pswitch_2
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateExact:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_9

    .line 629
    :pswitch_3
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateAny:Landroid/widget/RadioButton;

    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 642
    :goto_9
    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$15;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$15;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    .line 654
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateAny:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateExact:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 656
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMinMax:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMonths:Landroid/widget/RadioButton;

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateExact:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    const v3, 0x7f100154

    invoke-direct {p0, v0, v2, v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerDate(Landroid/widget/Spinner;Ljava/util/Date;I)V

    .line 660
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMin:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    const v3, 0x7f100340

    invoke-direct {p0, v0, v2, v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerDate(Landroid/widget/Spinner;Ljava/util/Date;I)V

    .line 661
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMax:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    const v3, 0x7f10014d

    invoke-direct {p0, v0, v2, v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerDate(Landroid/widget/Spinner;Ljava/util/Date;I)V

    .line 663
    new-instance v0, Ljava/util/TreeSet;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 664
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 665
    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 666
    invoke-direct {p0, v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->monthToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 669
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 670
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMonths:Landroid/widget/Spinner;

    const v2, 0x7f10021e

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_b

    .line 672
    :cond_a
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMonths:Landroid/widget/Spinner;

    const-string v3, ", "

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 675
    :goto_b
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    const v2, 0x7f100282

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    if-nez v0, :cond_b

    goto :goto_c

    .line 682
    :cond_b
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 683
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationName:Landroid/widget/Spinner;

    iget-object v3, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v3, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    invoke-direct {p0, v0, v3}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationEqual:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationValue:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 688
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v0, v0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 689
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationValue:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_d

    .line 693
    :cond_c
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationValue:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_d

    .line 677
    :cond_d
    :goto_c
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationName:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationEqual:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationValue:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 698
    :cond_e
    :goto_d
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshResetFiltersButton()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetFilters()V
    .locals 1

    .line 725
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {v0}, Lorg/inaturalist/android/ExploreSearchFilters;->resetToDefault()V

    .line 726
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V

    return-void
.end method

.method private setSpinnerDate(Landroid/widget/Spinner;Ljava/util/Date;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 715
    iget-object p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    invoke-virtual {p3, p2}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lorg/inaturalist/android/ExploreFiltersActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ExploreFiltersActivity;->setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V

    return-void
.end method

.method private setSpinnerText(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .line 719
    new-instance v0, Landroid/widget/ArrayAdapter;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const p2, 0x1090008

    invoke-direct {v0, p0, p2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 720
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 796
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x1000

    if-ne p1, v1, :cond_0

    if-ne p2, v0, :cond_1

    .line 801
    :try_start_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    new-instance p2, Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    .line 802
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 804
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1001

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 810
    :try_start_1
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    new-instance p2, Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p1, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    .line 811
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 813
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 146
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setElevation(F)V

    const v1, 0x7f08014e

    .line 151
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const/4 v1, 0x1

    .line 152
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v1, 0x7f100164

    .line 154
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 156
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const v0, 0x7f0d005c

    .line 158
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ExploreFiltersActivity;->setContentView(I)V

    .line 160
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_0

    const-string p1, "search_filters"

    .line 163
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const-string p1, "all_annotations"

    .line 164
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/SerializableJSONArray;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAllAnnotations:Lorg/inaturalist/android/SerializableJSONArray;

    .line 167
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mHandler:Landroid/os/Handler;

    const p1, 0x7f0a005a

    .line 169
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApplyFilters:Landroid/widget/Button;

    const p1, 0x7f0a0393

    .line 170
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mTaxonicIcons:Landroid/support/v7/widget/RecyclerView;

    const p1, 0x7f0a0333

    .line 171
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsCheckbox:Landroid/view/View;

    const p1, 0x7f0a0332

    .line 172
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsRow:Landroid/view/ViewGroup;

    const p1, 0x7f0a02bd

    .line 173
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectPic:Landroid/widget/ImageView;

    const p1, 0x7f0a02bb

    .line 174
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectName:Landroid/widget/TextView;

    const p1, 0x7f0a00b1

    .line 175
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearProject:Landroid/widget/ImageView;

    const p1, 0x7f0a03d2

    .line 176
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserPic:Landroid/widget/ImageView;

    const p1, 0x7f0a03d1

    .line 177
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserName:Landroid/widget/TextView;

    const p1, 0x7f0a00b4

    .line 178
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearUser:Landroid/widget/ImageView;

    const p1, 0x7f0a02e4

    .line 179
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResearchGradeCheckbox:Landroid/view/View;

    const p1, 0x7f0a023d

    .line 180
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mNeedsIdCheckbox:Landroid/view/View;

    const p1, 0x7f0a00a1

    .line 181
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mCasualGradeCheckbox:Landroid/view/View;

    const p1, 0x7f0a0284

    .line 182
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateAny:Landroid/widget/RadioButton;

    const p1, 0x7f0a0285

    .line 183
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateExact:Landroid/widget/RadioButton;

    const p1, 0x7f0a0286

    .line 184
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMinMax:Landroid/widget/RadioButton;

    const p1, 0x7f0a0287

    .line 185
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mOptionDateMonths:Landroid/widget/RadioButton;

    const p1, 0x7f0a00e8

    .line 186
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateAny:Landroid/widget/TextView;

    const p1, 0x7f0a00ea

    .line 187
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateExact:Landroid/widget/Spinner;

    const p1, 0x7f0a00ec

    .line 188
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMin:Landroid/widget/Spinner;

    const p1, 0x7f0a00eb

    .line 189
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMax:Landroid/widget/Spinner;

    const p1, 0x7f0a00ed

    .line 190
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMonths:Landroid/widget/Spinner;

    const p1, 0x7f0a0053

    .line 191
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationName:Landroid/widget/Spinner;

    const p1, 0x7f0a0052

    .line 192
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationEqual:Landroid/widget/TextView;

    const p1, 0x7f0a0054

    .line 193
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationValue:Landroid/widget/Spinner;

    .line 195
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateAny:Landroid/widget/TextView;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$1;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearUser:Landroid/widget/ImageView;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$2;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mUserName:Landroid/widget/TextView;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$3;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$3;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mClearProject:Landroid/widget/ImageView;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$4;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$4;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mProjectName:Landroid/widget/TextView;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$5;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$5;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 244
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "username"

    const/4 v1, 0x0

    .line 245
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user_icon_url"

    .line 246
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsCheckbox:Landroid/view/View;

    new-instance v2, Lorg/inaturalist/android/ExploreFiltersActivity$6;

    invoke-direct {v2, p0, v0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity$6;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsRow:Landroid/view/ViewGroup;

    new-instance v1, Lorg/inaturalist/android/ExploreFiltersActivity$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$7;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mShowMyObservationsRow:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 281
    new-instance p1, Lorg/inaturalist/android/ExploreFiltersActivity$8;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$8;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    .line 306
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResearchGradeCheckbox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mNeedsIdCheckbox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mCasualGradeCheckbox:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    new-instance p1, Lorg/inaturalist/android/ExploreFiltersActivity$9;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$9;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    .line 368
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateExact:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMin:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 370
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMax:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 371
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mDateMonths:Landroid/widget/Spinner;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$10;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$10;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p1, p0, v1, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 402
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mTaxonicIcons:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 404
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApplyFilters:Landroid/widget/Button;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$11;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$11;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationName:Landroid/widget/Spinner;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$12;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$12;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 464
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mAnnotationValue:Landroid/widget/Spinner;

    new-instance v0, Lorg/inaturalist/android/ExploreFiltersActivity$13;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ExploreFiltersActivity$13;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0003

    .line 121
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f0a02e8

    .line 122
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mResetFilters:Landroid/view/MenuItem;

    .line 123
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshResetFiltersButton()V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a02e8

    if-eq v0, v1, :cond_0

    .line 140
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->resetFilters()V

    return v2

    :cond_1
    const/4 p1, 0x0

    .line 132
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->setResult(I)V

    .line 133
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->finish()V

    return v2
.end method

.method public onPause()V
    .locals 0

    .line 530
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 535
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 536
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 540
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ExploreFiltersActivity;->refreshViewState()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 524
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 525
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 105
    invoke-static {}, Lorg/inaturalist/android/INaturalistApp;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10016a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 112
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 113
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    return-void
.end method
