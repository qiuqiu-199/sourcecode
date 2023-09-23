.class Lorg/inaturalist/android/ObservationCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "ObservationCursorAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;,
        Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;,
        Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;,
        Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleCursorAdapter"


# instance fields
.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private final mContext:Landroid/app/Activity;

.field private mCurrentProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

.field private mDimension:I

.field private final mGetAdditionalObsReceiver:Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;

.field private mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

.field private mImageViewToUrlAfterLoading:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImageViewToUrlExpected:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsGrid:Z

.field private mLoadingAdditionalObs:Z

.field private mNoMoreObsLeft:Z

.field private mObservationThumbnails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOnLoadingMoreResultsListener:Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

.field private mPhotoInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/inaturalist/android/ObservationCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ZLorg/inaturalist/android/PullToRefreshGridViewExtended;)V
    .locals 7

    if-eqz p3, :cond_0

    const v0, 0x7f0d00a3

    const v3, 0x7f0d00a3

    goto :goto_0

    :cond_0
    const v0, 0x7f0d006e

    const v3, 0x7f0d006e

    :goto_0
    const/4 v0, 0x0

    .line 102
    new-array v5, v0, [Ljava/lang/String;

    new-array v6, v0, [I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 74
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    const/4 p2, 0x0

    .line 81
    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mCurrentProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    .line 82
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mLoadingAdditionalObs:Z

    .line 83
    iput-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mOnLoadingMoreResultsListener:Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    .line 84
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mNoMoreObsLeft:Z

    .line 845
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mObservationThumbnails:Ljava/util/HashMap;

    .line 911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlAfterLoading:Ljava/util/Map;

    .line 912
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlExpected:Ljava/util/Map;

    .line 103
    iput-boolean p3, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    .line 104
    iput-object p4, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    .line 105
    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    .line 106
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const/4 p1, 0x1

    .line 108
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->getPhotoInfo(Z)V

    .line 110
    new-instance p1, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;

    invoke-direct {p1, p0, p2}, Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;Lorg/inaturalist/android/ObservationCursorAdapter$1;)V

    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mGetAdditionalObsReceiver:Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;

    .line 111
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    sget-object p2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ADDITIONAL_OBS_RESULT:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mGetAdditionalObsReceiver:Lorg/inaturalist/android/ObservationCursorAdapter$GetAdditionalObsReceiver;

    iget-object p3, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p2, p1, p3}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ObservationCursorAdapter;ILandroid/widget/ImageView;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/inaturalist/android/ObservationCursorAdapter;->downloadRemoteObsPhoto(ILandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$102(Lorg/inaturalist/android/ObservationCursorAdapter;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mLoadingAdditionalObs:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/Map;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlExpected:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/ObservationCursorAdapter;ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V
    .locals 0

    .line 69
    invoke-direct/range {p0 .. p5}, Lorg/inaturalist/android/ObservationCursorAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mOnLoadingMoreResultsListener:Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/ObservationCursorAdapter;Z)Z
    .locals 0

    .line 69
    iput-boolean p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mNoMoreObsLeft:Z

    return p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ObservationCursorAdapter;)I
    .locals 0

    .line 69
    iget p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    return p0
.end method

.method static synthetic access$402(Lorg/inaturalist/android/ObservationCursorAdapter;I)I
    .locals 0

    .line 69
    iput p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    return p1
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ObservationCursorAdapter;)Lorg/inaturalist/android/PullToRefreshGridViewExtended;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ObservationCursorAdapter;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->isNetworkAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ObservationCursorAdapter;)Landroid/app/Activity;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mObservationThumbnails:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ObservationCursorAdapter;)Ljava/util/Map;
    .locals 0

    .line 69
    iget-object p0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlAfterLoading:Ljava/util/Map;

    return-object p0
.end method

.method private downloadRemoteObsPhoto(ILandroid/widget/ImageView;)V
    .locals 9

    .line 1010
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p2

    .line 1011
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 1012
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1013
    new-instance p1, Lorg/inaturalist/android/Observation;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 1014
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1016
    iget-object p2, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const-string p2, "SimpleCursorAdapter"

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadRemoteObsPhoto - Observation hasn\'t been synced yet - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "SimpleCursorAdapter"

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadRemoteObsPhoto - Downloading observation JSON - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    iget-object p2, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lorg/inaturalist/android/ObservationCursorAdapter;->getObservationJson(I)Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1026
    new-instance v0, Lorg/inaturalist/android/Observation;

    new-instance v1, Lorg/inaturalist/android/BetterJSONObject;

    invoke-direct {v1, p2}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Lorg/inaturalist/android/Observation;-><init>(Lorg/inaturalist/android/BetterJSONObject;)V

    .line 1027
    iget-object p2, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 1029
    iget-object p2, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    new-instance v1, Lorg/inaturalist/android/ObservationCursorAdapter$6;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationCursorAdapter$6;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;)V

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1038
    iget-object p2, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/ObservationPhoto;

    iget-object p2, p2, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    const-string v2, "SimpleCursorAdapter"

    .line 1039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadRemoteObsPhoto - Remote obs URL - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    iget-object v3, p1, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 1044
    aput-object p2, v2, v3

    .line 1046
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/ObservationPhoto;->PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(id = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/inaturalist/android/Observation;->photos:Ljava/util/List;

    .line 1048
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ObservationPhoto;

    iget-object v0, v0, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "position ASC, id ASC, _id ASC"

    .line 1046
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1051
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1052
    new-instance v1, Lorg/inaturalist/android/ObservationPhoto;

    invoke-direct {v1, v0}, Lorg/inaturalist/android/ObservationPhoto;-><init>(Landroid/database/Cursor;)V

    const-string v0, "SimpleCursorAdapter"

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadRemoteObsPhoto - Updating DB - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lorg/inaturalist/android/Observation;->id:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lorg/inaturalist/android/ObservationPhoto;->id:Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iput-object p2, v1, Lorg/inaturalist/android/ObservationPhoto;->photo_url:Ljava/lang/String;

    .line 1055
    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationPhoto;->getContentValues()Landroid/content/ContentValues;

    move-result-object p1

    .line 1056
    iget-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {v1}, Lorg/inaturalist/android/ObservationPhoto;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1059
    :cond_2
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->savePhotoInfo()V

    :cond_3
    return-void
.end method

.method public static getIconicTaxonDrawable(Ljava/lang/String;)I
    .locals 2

    const v0, 0x7f08027d

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v1, "Animalia"

    .line 1151
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f080272

    goto/16 :goto_0

    :cond_1
    const-string v1, "Plantae"

    .line 1153
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f08027a

    goto/16 :goto_0

    :cond_2
    const-string v1, "Chromista"

    .line 1155
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f080275

    goto/16 :goto_0

    :cond_3
    const-string v1, "Fungi"

    .line 1157
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f080276

    goto/16 :goto_0

    :cond_4
    const-string v1, "Protozoa"

    .line 1159
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v0, 0x7f08027b

    goto :goto_0

    :cond_5
    const-string v1, "Actinopterygii"

    .line 1161
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const v0, 0x7f080270

    goto :goto_0

    :cond_6
    const-string v1, "Amphibia"

    .line 1163
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v0, 0x7f080271

    goto :goto_0

    :cond_7
    const-string v1, "Reptilia"

    .line 1165
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v0, 0x7f08027c

    goto :goto_0

    :cond_8
    const-string v1, "Aves"

    .line 1167
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v0, 0x7f080274

    goto :goto_0

    :cond_9
    const-string v1, "Mammalia"

    .line 1169
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const v0, 0x7f080278

    goto :goto_0

    :cond_a
    const-string v1, "Mollusca"

    .line 1171
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v0, 0x7f080279

    goto :goto_0

    :cond_b
    const-string v1, "Insecta"

    .line 1173
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v0, 0x7f080277

    goto :goto_0

    :cond_c
    const-string v1, "Arachnida"

    .line 1175
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const v0, 0x7f080273

    :cond_d
    :goto_0
    return v0
.end method

.method private getNewCursor()Landroid/database/Cursor;
    .locals 8

    const/4 v0, 0x0

    .line 222
    invoke-direct {p0, v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 223
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const/4 v1, 0x1

    .line 224
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v7, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getObservationJson(I)Lorg/json/JSONObject;
    .locals 7

    .line 1065
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1066
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1070
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v3, "%s/observations/%d.json?locale=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v5, Lorg/inaturalist/android/INaturalistService;->HOST:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    aput-object v0, v4, p1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1080
    :try_start_1
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 1081
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    .line 1085
    new-array v2, v2, [C

    .line 1086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1088
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1089
    invoke-virtual {v3, v2, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1092
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1094
    :try_start_2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v0, v1

    .line 1098
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception p1

    move-object v0, v1

    .line 1096
    :goto_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-object v0

    :catch_4
    move-exception p1

    .line 1072
    invoke-virtual {p1}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-object v1
.end method

.method private getQuery(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    const-string v1, "iNaturalistPreferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "username"

    const/4 v3, 0x0

    .line 179
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(_synced_at IS NULL"

    if-eqz v0, :cond_0

    .line 182
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OR user_login = \'"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND (is_deleted = 0 OR is_deleted is NULL)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND ((id >= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "last_downloaded_id"

    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR (_synced_at IS NULL))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND ((species_guess LIKE ?) OR ((species_guess IS NULL) AND (preferred_common_name like ?)))"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    .line 194
    new-array v3, v1, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    .line 197
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private isNetworkAvailable()Z
    .locals 2

    .line 905
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 906
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 907
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadMoreObservations()V
    .locals 5

    .line 1125
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mNoMoreObsLeft:Z

    if-eqz v0, :cond_0

    return-void

    .line 1126
    :cond_0
    iget-boolean v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mLoadingAdditionalObs:Z

    if-eqz v0, :cond_1

    return-void

    .line 1127
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1128
    :cond_2
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1129
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lorg/inaturalist/android/ObservationCursorAdapter$7;

    invoke-direct {v1, p0}, Lorg/inaturalist/android/ObservationCursorAdapter$7;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 1138
    iput-boolean v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mLoadingAdditionalObs:Z

    .line 1140
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mOnLoadingMoreResultsListener:Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mOnLoadingMoreResultsListener:Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    invoke-interface {v0}, Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;->onLoadingMoreResultsStart()V

    .line 1142
    :cond_4
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_ADDITIONAL_OBS:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1143
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V
    .locals 12

    move-object v7, p0

    move v6, p1

    move-object v8, p2

    move-object v3, p3

    .line 915
    iget-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlExpected:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    iget-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlAfterLoading:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlAfterLoading:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 918
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_0
    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-nez p4, :cond_4

    .line 929
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    .line 934
    invoke-virtual {p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 935
    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    .line 936
    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 937
    new-instance v10, Lorg/inaturalist/android/Observation;

    invoke-direct {v10, v4}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 938
    invoke-interface {v4, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 939
    iget-object v4, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    iget-object v9, v10, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 941
    aget-object v9, v4, v0

    if-nez v9, :cond_2

    goto :goto_0

    .line 954
    :cond_2
    aget-object v4, v4, v0

    const-string v9, "SimpleCursorAdapter"

    .line 955
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Local file deleted - using remote URL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "SimpleCursorAdapter"

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local file deleted - re-downloading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/inaturalist/android/ObservationCursorAdapter$4;

    invoke-direct {v1, p0, p1, p2}, Lorg/inaturalist/android/ObservationCursorAdapter$4;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;ILandroid/widget/ImageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 949
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    move/from16 v4, p4

    move-object v9, v3

    :goto_1
    if-eqz v4, :cond_7

    const-string v0, "."

    .line 965
    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_5

    move-object v4, v9

    goto :goto_2

    .line 966
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    add-int/2addr v10, v2

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "square."

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    .line 968
    :goto_2
    iget-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    .line 969
    invoke-virtual {v0, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 970
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 971
    invoke-virtual {v0}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    if-eqz p5, :cond_6

    .line 974
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    :cond_6
    move-object v9, v0

    .line 977
    new-instance v10, Lorg/inaturalist/android/ObservationCursorAdapter$5;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/inaturalist/android/ObservationCursorAdapter$5;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v9, p2, v10}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_3

    .line 1004
    :cond_7
    new-instance v4, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;

    invoke-direct {v4, p0, p2}, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/widget/ImageView;)V

    .line 1005
    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {v4, v0}, Lorg/inaturalist/android/ObservationCursorAdapter$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_3
    return-void
.end method

.method private loadPhotoInfo()V
    .locals 3

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "observations_photo_info.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 150
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 151
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    .line 152
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private refreshCommentsIdSize(Landroid/widget/TextView;Ljava/lang/Long;)V
    .locals 2

    .line 816
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 818
    new-instance v1, Lorg/inaturalist/android/ObservationCursorAdapter$3;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter$3;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 840
    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private savePhotoInfo()V
    .locals 3

    .line 162
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "observations_photo_info.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 165
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 166
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 167
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPhotoInfo(Z)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p1, :cond_0

    .line 236
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->loadPhotoInfo()V

    .line 238
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getNewCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 240
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 241
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 245
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 247
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 250
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "_id"

    .line 251
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "id"

    .line 252
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "uuid"

    .line 253
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 255
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 262
    :cond_2
    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 263
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 266
    iget-object v1, v0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x7

    new-array v8, v1, [Ljava/lang/String;

    const-string v1, "_observation_id"

    const/4 v2, 0x0

    aput-object v1, v8, v2

    const-string v1, "observation_id"

    const/4 v12, 0x1

    aput-object v1, v8, v12

    const-string v1, "_photo_id"

    const/4 v13, 0x2

    aput-object v1, v8, v13

    const-string v1, "photo_url"

    const/4 v14, 0x3

    aput-object v1, v8, v14

    const-string v1, "photo_filename"

    const/4 v15, 0x4

    aput-object v1, v8, v15

    const-string v1, "original_photo_filename"

    const/4 v11, 0x5

    aput-object v1, v8, v11

    const/4 v1, 0x6

    const-string v9, "position"

    aput-object v9, v8, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(_observation_id IN ("

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    .line 268
    invoke-static {v3, v9}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") OR observation_id IN ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-static {v4, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "))"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const-string v1, "position ASC, id ASC, _id ASC"

    const/4 v3, 0x5

    move-object v11, v1

    .line 266
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 272
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 273
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "photo_url"

    .line 274
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "photo_filename"

    .line 275
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_observation_id"

    .line 276
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 277
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 279
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v6, "original_photo_filename"

    .line 281
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 285
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 287
    iget-object v8, v0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    .line 291
    :cond_4
    iget-object v8, v0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    new-array v9, v3, [Ljava/lang/String;

    aput-object v6, v9, v2

    const/4 v6, 0x0

    aput-object v6, v9, v12

    aput-object v4, v9, v13

    aput-object v6, v9, v14

    aput-object v6, v9, v15

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 301
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 303
    invoke-direct/range {p0 .. p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->savePhotoInfo()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 51

    move-object/from16 v7, p0

    .line 362
    invoke-super/range {p0 .. p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 364
    invoke-virtual/range {p0 .. p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v9

    .line 365
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    move/from16 v2, p1

    .line 368
    invoke-interface {v9, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v1, "_id"

    .line 370
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v1, "id"

    .line 371
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "_updated_at"

    .line 372
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v3, "uuid"

    .line 373
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "species_guess"

    .line 374
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    if-eqz v3, :cond_1

    .line 375
    iget-object v5, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v13, v3

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    .line 376
    :goto_0
    iget-object v3, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/inaturalist/android/INaturalistApp;->getErrorsForObservation(I)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 377
    :goto_1
    iget-object v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getObservationIdBeingSynced()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v1, v4, v17

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x2

    if-nez p2, :cond_4

    .line 380
    new-instance v1, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;

    move-object v3, v8

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v1, v3}, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;-><init>(Landroid/view/ViewGroup;)V

    .line 381
    invoke-virtual {v8, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v14, v1

    goto/16 :goto_6

    .line 383
    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;

    .line 385
    new-instance v4, Lorg/inaturalist/android/Observation;

    invoke-direct {v4, v9}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 386
    iget-wide v14, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsId:J

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v19, v14, v17

    if-nez v19, :cond_9

    iget-object v14, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->observation:Lorg/inaturalist/android/Observation;

    if-eqz v14, :cond_9

    iget-object v14, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->observation:Lorg/inaturalist/android/Observation;

    invoke-virtual {v14, v4}, Lorg/inaturalist/android/Observation;->equals(Lorg/inaturalist/android/Observation;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-eqz v13, :cond_6

    .line 387
    aget-object v4, v13, v5

    if-eqz v4, :cond_5

    aget-object v4, v13, v5

    move-object v14, v4

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    aget-object v14, v13, v4

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    .line 388
    :goto_3
    iget-object v4, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->photoFilename:Ljava/lang/String;

    if-ne v4, v14, :cond_9

    iget-boolean v4, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->hasErrors:Z

    if-ne v4, v6, :cond_9

    iget-boolean v4, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->isBeingSynced:Z

    if-ne v4, v1, :cond_9

    iget-boolean v1, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->isBeingSynced:Z

    iget-object v4, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 391
    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getObservationIdBeingSynced()I

    move-result v4

    int-to-long v14, v4

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v4, v14, v17

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-ne v1, v4, :cond_9

    .line 396
    iget-object v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    if-eqz v1, :cond_8

    .line 398
    iget-object v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v1}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getColumnWidth()I

    move-result v15

    .line 399
    iget-object v1, v3, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ne v15, v1, :cond_9

    return-object v8

    :cond_9
    move-object v14, v3

    .line 410
    :goto_6
    iget-object v3, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsImage:Landroid/widget/ImageView;

    .line 411
    iget-object v1, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsIconicImage:Landroid/widget/ImageView;

    .line 412
    iget-object v15, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->speciesGuess:Landroid/widget/TextView;

    .line 413
    iget-object v4, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->dateObserved:Landroid/widget/TextView;

    move/from16 v20, v6

    .line 414
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->commentIdContainer:Landroid/view/ViewGroup;

    move-object/from16 v21, v6

    .line 415
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->leftContainer:Landroid/view/ViewGroup;

    move-object/from16 v22, v6

    .line 417
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->commentIcon:Landroid/widget/ImageView;

    move-object/from16 v23, v6

    .line 418
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->idIcon:Landroid/widget/ImageView;

    move-object/from16 v24, v6

    .line 419
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->commentCount:Landroid/widget/TextView;

    move-object/from16 v25, v6

    .line 420
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->idCount:Landroid/widget/TextView;

    move-object/from16 v26, v6

    .line 422
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->placeGuess:Landroid/widget/TextView;

    move-object/from16 v27, v6

    .line 423
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->locationIcon:Landroid/widget/ImageView;

    move-object/from16 v28, v6

    .line 425
    iget-object v6, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->progress:Landroid/view/View;

    .line 426
    iget-object v5, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->progressInner:Landroid/view/View;

    const-string v2, "place_guess"

    .line 428
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v2, "private_place_guess"

    .line 429
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v2, "latitude"

    .line 430
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    const-string v2, "longitude"

    .line 431
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    const-string v2, "private_latitude"

    .line 432
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    const-string v2, "private_longitude"

    .line 433
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    .line 435
    iget-boolean v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-eqz v2, :cond_a

    .line 436
    iget-object v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mGrid:Lorg/inaturalist/android/PullToRefreshGridViewExtended;

    invoke-virtual {v2}, Lorg/inaturalist/android/PullToRefreshGridViewExtended;->getColumnWidth()I

    move-result v2

    iput v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    .line 437
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v34, v4

    iget v4, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    move-object/from16 v35, v5

    iget v5, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    iget v5, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    iget v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    int-to-double v4, v2

    const-wide v36, 0x3fdeb851eb851eb8L    # 0.48

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v36

    double-to-int v2, v4

    const/high16 v4, 0x41f00000    # 30.0f

    .line 441
    iget-object v5, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object/from16 v38, v6

    const/4 v6, 0x1

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 442
    iget v5, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    sub-int/2addr v5, v2

    const/4 v6, 0x2

    div-int/2addr v5, v6

    .line 443
    iget v6, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    sub-int/2addr v6, v4

    sub-int/2addr v6, v2

    const/4 v4, 0x2

    div-int/2addr v6, v4

    .line 444
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 445
    invoke-virtual {v4, v5, v6, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 446
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_a
    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v38, v6

    const/4 v2, 0x0

    :goto_7
    const-string v4, "iconic_taxon_name"

    .line 450
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-static {v4}, Lorg/inaturalist/android/ObservationCursorAdapter;->getIconicTaxonDrawable(Ljava/lang/String;)I

    move-result v4

    .line 454
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 455
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v6, 0x4

    .line 456
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v13, :cond_e

    const/4 v1, 0x2

    .line 459
    aget-object v4, v13, v1

    if-eqz v4, :cond_b

    aget-object v4, v13, v1

    move-object v5, v4

    goto :goto_8

    :cond_b
    aget-object v1, v13, v2

    move-object v5, v1

    .line 461
    :goto_8
    iget-boolean v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-eqz v1, :cond_c

    if-nez p2, :cond_c

    .line 462
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    iget v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mDimension:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lorg/inaturalist/android/ObservationCursorAdapter$1;

    invoke-direct {v1, v7, v8, v3}, Lorg/inaturalist/android/ObservationCursorAdapter$1;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_c
    const/4 v0, 0x2

    .line 479
    aget-object v1, v13, v0

    if-eqz v1, :cond_d

    const/16 v16, 0x1

    goto :goto_9

    :cond_d
    const/16 v16, 0x0

    :goto_9
    const/16 v29, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v39, v34

    move-object v4, v5

    move-object v0, v5

    move-object/from16 v40, v8

    move-object/from16 v33, v35

    const/4 v8, 0x2

    move/from16 v5, v16

    move-object/from16 v50, v10

    move-object/from16 v46, v11

    move-object/from16 v43, v12

    move-object/from16 v45, v13

    move-object/from16 v44, v15

    move/from16 v41, v20

    move-object/from16 v8, v21

    move-object/from16 v42, v22

    move-object/from16 v12, v23

    move-object/from16 v15, v24

    move-object/from16 v13, v25

    move-object/from16 v11, v26

    move-object/from16 v47, v27

    move-object/from16 v48, v28

    move-object/from16 v49, v38

    const/4 v10, 0x4

    move/from16 v6, v29

    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/ObservationCursorAdapter;->loadObsImage(ILandroid/widget/ImageView;Ljava/lang/String;ZZ)V

    .line 481
    iput-object v0, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->photoFilename:Ljava/lang/String;

    goto :goto_a

    :cond_e
    move-object/from16 v40, v8

    move-object/from16 v50, v10

    move-object/from16 v46, v11

    move-object/from16 v43, v12

    move-object/from16 v45, v13

    move-object/from16 v44, v15

    move/from16 v41, v20

    move-object/from16 v8, v21

    move-object/from16 v42, v22

    move-object/from16 v12, v23

    move-object/from16 v15, v24

    move-object/from16 v13, v25

    move-object/from16 v11, v26

    move-object/from16 v47, v27

    move-object/from16 v48, v28

    move-object/from16 v39, v34

    move-object/from16 v33, v35

    move-object/from16 v49, v38

    const/4 v10, 0x4

    .line 483
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 484
    iput-object v0, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->photoFilename:Ljava/lang/String;

    .line 485
    iget-object v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mImageViewToUrlExpected:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    const-string v0, "time_observed_at"

    .line 488
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 490
    iget-boolean v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    const-wide/16 v2, 0x0

    if-nez v1, :cond_10

    .line 491
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-nez v1, :cond_f

    move-object/from16 v1, v39

    .line 493
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_f
    move-object/from16 v1, v39

    const/4 v4, 0x0

    .line 495
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 496
    new-instance v4, Ljava/sql/Timestamp;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/sql/Timestamp;-><init>(J)V

    .line 497
    iget-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-static {v0, v4}, Lorg/inaturalist/android/CommentsIdsAdapter;->formatIdDate(Landroid/content/Context;Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    :cond_10
    move-object/from16 v1, v39

    :goto_b
    const-string v0, "comments_count"

    .line 501
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v4, "identifications_count"

    .line 502
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "last_comments_count"

    .line 503
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "last_identifications_count"

    .line 504
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v9, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 506
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    add-long v20, v20, v22

    cmp-long v16, v20, v2

    if-nez v16, :cond_11

    const/4 v10, 0x4

    .line 508
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v10, 0x0

    .line 509
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    move-object/from16 v3, v50

    goto/16 :goto_12

    :cond_11
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 511
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 512
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v5, :cond_14

    .line 514
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v5, v2, v20

    if-ltz v5, :cond_14

    if-eqz v6, :cond_14

    .line 515
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v10, v2, v5

    if-gez v10, :cond_12

    goto :goto_c

    .line 528
    :cond_12
    iget-boolean v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    .line 530
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_d

    :cond_13
    const-string v2, "#959595"

    .line 532
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "#959595"

    .line 533
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "#707070"

    .line 535
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v2, "#707070"

    .line 536
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_d

    :cond_14
    :goto_c
    const/4 v2, 0x0

    .line 517
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 518
    iget-boolean v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-eqz v2, :cond_15

    const-string v2, "#EA118D"

    .line 519
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_d

    :cond_15
    const-string v2, "#EA118D"

    .line 521
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "#EA118D"

    .line 522
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "#EA118D"

    .line 524
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v2, "#EA118D"

    .line 525
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 540
    :goto_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v10, v2, v5

    if-lez v10, :cond_16

    .line 541
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 542
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v3, 0x8

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    const/16 v3, 0x8

    .line 545
    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    invoke-virtual {v12, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    :goto_e
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v10, v12, v5

    if-lez v10, :cond_17

    .line 550
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    .line 554
    :cond_17
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 558
    :goto_f
    new-instance v2, Lorg/inaturalist/android/ObservationCursorAdapter$2;

    move-object/from16 v3, v50

    invoke-direct {v2, v7, v3}, Lorg/inaturalist/android/ObservationCursorAdapter$2;-><init>(Lorg/inaturalist/android/ObservationCursorAdapter;Ljava/lang/Long;)V

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    iget-boolean v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v2, :cond_19

    .line 576
    invoke-virtual/range {v42 .. v42}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 577
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-string v6, "  %d  %d"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v11, v10

    const/4 v4, 0x1

    aput-object v0, v11, v4

    invoke-static {v6, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v5, v0, :cond_18

    const v0, 0x7f0a00e7

    .line 578
    invoke-virtual {v2, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_10
    move-object/from16 v0, v42

    goto :goto_11

    :cond_18
    const v0, 0x7f0a00c7

    .line 580
    invoke-virtual {v2, v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_10

    .line 583
    :goto_11
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    :goto_12
    const-string v0, "_synced_at"

    .line 587
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 588
    invoke-virtual/range {v46 .. v46}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v4, v10

    if-lez v0, :cond_1a

    goto :goto_13

    :cond_1a
    const/4 v0, 0x0

    goto :goto_14

    :cond_1b
    :goto_13
    const/4 v0, 0x1

    :goto_14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x3

    if-nez v2, :cond_1d

    if-eqz v45, :cond_1d

    const/4 v2, 0x2

    aget-object v5, v45, v2

    if-nez v5, :cond_1d

    aget-object v2, v45, v4

    if-eqz v2, :cond_1d

    const/4 v2, 0x4

    .line 595
    aget-object v5, v45, v2

    if-nez v5, :cond_1c

    const/4 v5, 0x1

    .line 596
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_15

    .line 598
    :cond_1c
    aget-object v5, v45, v2

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 599
    aget-object v5, v45, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 600
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v2, v5, v10

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    .line 601
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 606
    :cond_1d
    :goto_15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 609
    iget-object v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "_observation_id"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "_photo_id"

    const/4 v10, 0x2

    aput-object v5, v2, v10

    const-string v5, "photo_url"

    aput-object v5, v2, v4

    const-string v4, "_updated_at"

    const/4 v5, 0x4

    aput-object v4, v2, v5

    const/4 v4, 0x5

    const-string v5, "_synced_at"

    aput-object v5, v2, v4

    const-string v23, "_observation_id = ? AND photo_url IS NULL AND _synced_at IS NULL"

    new-array v4, v6, [Ljava/lang/String;

    .line 619
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v25, "_id"

    move-object/from16 v22, v2

    move-object/from16 v24, v4

    .line 609
    invoke-virtual/range {v20 .. v25}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 621
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v4, 0x1

    .line 622
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 624
    :cond_1e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1f
    move-object v2, v0

    .line 628
    iget-boolean v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v0, :cond_28

    if-eqz v17, :cond_20

    .line 629
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    if-eqz v18, :cond_23

    .line 630
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_17

    :cond_21
    if-eqz v18, :cond_22

    .line 640
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    move-object/from16 v0, v18

    goto :goto_16

    :cond_22
    move-object/from16 v0, v17

    :goto_16
    move-object/from16 v4, v47

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1a

    :cond_23
    :goto_17
    move-object/from16 v4, v47

    .line 631
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v10, 0x0

    cmpl-double v0, v5, v10

    if-nez v0, :cond_25

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v5, v10

    if-nez v0, :cond_25

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v5, v10

    if-nez v0, :cond_25

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    cmpl-double v0, v5, v10

    if-eqz v0, :cond_24

    goto :goto_18

    :cond_24
    const v0, 0x7f10026e

    .line 637
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1a

    .line 633
    :cond_25
    :goto_18
    iget-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    const v5, 0x7f100201

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "%.4f..."

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    .line 634
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    cmpl-double v17, v15, v10

    if-eqz v17, :cond_26

    move-object/from16 v31, v19

    :cond_26
    const/4 v15, 0x0

    aput-object v31, v13, v15

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v15

    const-string v6, "%.4f..."

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    cmpl-double v18, v16, v10

    if-eqz v18, :cond_27

    goto :goto_19

    :cond_27
    move-object/from16 v30, v32

    :goto_19
    aput-object v30, v13, v15

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    .line 633
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1b

    :cond_28
    move-object/from16 v4, v47

    :goto_1a
    const/4 v12, 0x1

    .line 646
    :goto_1b
    iput-object v2, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->syncNeeded:Ljava/lang/Boolean;

    const-string v0, "description"

    .line 648
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "preferred_common_name"

    .line 649
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v49

    const/16 v10, 0x8

    .line 651
    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 652
    iget-boolean v10, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v10, :cond_29

    const-string v10, "#666666"

    .line 653
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v10, 0x0

    .line 654
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v10, "#000000"

    .line 655
    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v11, v44

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1c

    :cond_29
    move-object/from16 v11, v44

    :goto_1c
    const-string v10, "scientific_name"

    .line 658
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 659
    iget-object v13, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v13}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v13

    if-eqz v13, :cond_2a

    if-eqz v10, :cond_2a

    const-string v0, "rank_level"

    .line 661
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "rank"

    .line 662
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 663
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v15, "name"

    .line 665
    invoke-virtual {v13, v15, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "rank"

    .line 666
    invoke-virtual {v13, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "rank_level"

    .line 667
    invoke-virtual {v13, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 669
    invoke-static {v11, v13}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1d

    :catch_0
    move-exception v0

    .line 671
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1d

    :cond_2a
    if-eqz v5, :cond_2b

    .line 675
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    move/from16 v15, v41

    goto :goto_1e

    :cond_2b
    if-eqz v43, :cond_2c

    .line 676
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2c

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, v43

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_2c
    if-eqz v0, :cond_2d

    .line 678
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    .line 679
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_2d
    const v0, 0x7f10037b

    .line 681
    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1d

    .line 685
    :goto_1e
    iput-boolean v15, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->hasErrors:Z

    const v0, 0x7f080328

    if-eqz v15, :cond_2f

    const v5, 0x7f080329

    move-object/from16 v10, v40

    .line 687
    invoke-virtual {v10, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 688
    iget-boolean v5, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v5, :cond_2e

    const v5, 0x7f100249

    .line 689
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v5, v48

    const/16 v11, 0x8

    .line 690
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1f

    :cond_2e
    move-object/from16 v5, v48

    goto :goto_1f

    :cond_2f
    move-object/from16 v10, v40

    move-object/from16 v5, v48

    .line 693
    iget-boolean v11, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v11, :cond_30

    const/4 v11, 0x0

    .line 694
    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1f

    :cond_30
    const-string v11, "#DDDDDD"

    .line 697
    invoke-static {v11}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setBackgroundColor(I)V

    .line 701
    :goto_1f
    iget-object v11, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v11}, Lorg/inaturalist/android/INaturalistApp;->getObservationIdBeingSynced()I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v11, v12, v16

    if-nez v11, :cond_31

    const/4 v11, 0x1

    goto :goto_20

    :cond_31
    const/4 v11, 0x0

    :goto_20
    iput-boolean v11, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->isBeingSynced:Z

    .line 702
    iget-object v11, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v11}, Lorg/inaturalist/android/INaturalistApp;->getObservationIdBeingSynced()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const v13, 0x7f08032a

    cmp-long v18, v11, v16

    if-nez v18, :cond_35

    if-eqz v33, :cond_32

    goto :goto_21

    :cond_32
    move-object/from16 v33, v6

    .line 703
    :goto_21
    move-object/from16 v0, v33

    check-cast v0, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    .line 704
    iget-object v2, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mCurrentProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eq v0, v2, :cond_33

    const/4 v2, 0x0

    .line 705
    invoke-virtual {v0, v2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setProgress(F)V

    .line 708
    :cond_33
    iput-object v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mCurrentProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    .line 711
    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 713
    iget-boolean v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v0, :cond_34

    const v0, 0x7f100388

    .line 714
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "#74Ac00"

    .line 715
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0x8

    .line 716
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 717
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_34
    const/4 v1, 0x0

    .line 720
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 721
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_22

    .line 723
    :cond_35
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getObservationIdBeingSynced()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v6, v1, v11

    if-eqz v6, :cond_36

    if-nez v15, :cond_38

    .line 726
    invoke-virtual {v10, v13}, Landroid/view/View;->setBackgroundResource(I)V

    .line 727
    iget-boolean v0, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v0, :cond_38

    const v0, 0x7f1003a6

    .line 728
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x8

    .line 729
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_22

    :cond_36
    if-nez v15, :cond_38

    .line 734
    iget-boolean v1, v7, Lorg/inaturalist/android/ObservationCursorAdapter;->mIsGrid:Z

    if-nez v1, :cond_37

    .line 735
    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_22

    :cond_37
    const-string v0, "#DDDDDD"

    .line 737
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 743
    :cond_38
    :goto_22
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsId:J

    move-object/from16 v1, v46

    .line 744
    iput-object v1, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->updatedAt:Ljava/lang/Long;

    .line 745
    new-instance v0, Lorg/inaturalist/android/Observation;

    invoke-direct {v0, v9}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    iput-object v0, v14, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->observation:Lorg/inaturalist/android/Observation;

    return-object v10
.end method

.method public isLocked(Landroid/net/Uri;)Z
    .locals 14

    .line 752
    iget-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    sget-object v2, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 753
    new-instance v0, Lorg/inaturalist/android/Observation;

    invoke-direct {v0, p1}, Lorg/inaturalist/android/Observation;-><init>(Landroid/database/Cursor;)V

    .line 755
    iget-object p1, v0, Lorg/inaturalist/android/Observation;->_id:Ljava/lang/Integer;

    .line 756
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    iget-object v2, v0, Lorg/inaturalist/android/Observation;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 757
    iget-object v2, v0, Lorg/inaturalist/android/Observation;->_synced_at:Ljava/sql/Timestamp;

    .line 758
    iget-object v0, v0, Lorg/inaturalist/android/Observation;->_updated_at:Ljava/sql/Timestamp;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 759
    invoke-virtual {v0, v2}, Ljava/sql/Timestamp;->after(Ljava/sql/Timestamp;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    aget-object v2, v1, v5

    if-nez v2, :cond_3

    aget-object v2, v1, v7

    if-eqz v2, :cond_3

    .line 766
    aget-object v2, v1, v6

    if-nez v2, :cond_2

    .line 767
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2

    .line 769
    :cond_2
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 770
    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 771
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v10, v8, v1

    if-lez v10, :cond_3

    .line 772
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 777
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_5

    .line 779
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Lorg/inaturalist/android/ObservationPhoto;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x6

    new-array v10, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v10, v3

    const-string v1, "_observation_id"

    aput-object v1, v10, v4

    const-string v1, "_photo_id"

    aput-object v1, v10, v5

    const-string v1, "photo_url"

    aput-object v1, v10, v7

    const-string v1, "_updated_at"

    aput-object v1, v10, v6

    const/4 v1, 0x5

    const-string v2, "_synced_at"

    aput-object v2, v10, v1

    const-string v11, "_observation_id = ? AND photo_url IS NULL AND _synced_at IS NULL"

    new-array v12, v4, [Ljava/lang/String;

    .line 789
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v3

    const-string v13, "_id"

    .line 779
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 791
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 792
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 794
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 797
    :cond_5
    iget-object v1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v1}, Lorg/inaturalist/android/INaturalistApp;->getObservationIdBeingSynced()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v1, p1, :cond_6

    return v4

    .line 801
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    return v3

    .line 806
    :cond_7
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->getAutoSync()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_3

    :cond_8
    return v4

    :cond_9
    :goto_3
    return v3
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    add-int/2addr p2, p3

    add-int/lit8 p1, p4, -0x6

    if-lt p2, p1, :cond_0

    if-lez p4, :cond_0

    .line 1120
    invoke-direct {p0}, Lorg/inaturalist/android/ObservationCursorAdapter;->loadMoreObservations()V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 1107
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1112
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->pauseTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1110
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/squareup/picasso/Picasso;->resumeTag(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public refreshCursor()V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor(Ljava/lang/String;)V

    return-void
.end method

.method public refreshCursor(Ljava/lang/String;)V
    .locals 7

    .line 204
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->getQuery(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v0, 0x1

    .line 206
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    .line 208
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mContext:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lorg/inaturalist/android/Observation;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lorg/inaturalist/android/Observation;->PROJECTION:[Ljava/lang/String;

    const-string v6, "CASE WHEN _created_at > created_at THEN created_at ELSE _created_at END DESC, CASE WHEN id IS NULL THEN _id ELSE id END DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 212
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 213
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ObservationCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getPhotoInfo(Z)V

    return-void
.end method

.method public refreshPhotoInfo()V
    .locals 1

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mPhotoInfo:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 308
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->getPhotoInfo(Z)V

    return-void
.end method

.method public setOnLoadingMoreResultsListener(Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mOnLoadingMoreResultsListener:Lorg/inaturalist/android/ObservationCursorAdapter$OnLoadingMoreResultsListener;

    return-void
.end method

.method public updateProgress(IF)V
    .locals 0

    .line 1185
    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mCurrentProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter;->mCurrentProgressBar:Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;

    invoke-virtual {p1, p2}, Lcom/mikhaellopez/circularprogressbar/CircularProgressBar;->setProgressWithAnimation(F)V

    :cond_0
    return-void
.end method
