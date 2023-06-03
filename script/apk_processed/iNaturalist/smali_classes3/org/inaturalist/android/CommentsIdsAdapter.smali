.class public Lorg/inaturalist/android/CommentsIdsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CommentsIdsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/inaturalist/android/BetterJSONObject;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "CommentsIdsAdapter"


# instance fields
.field private mAgreeing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private final mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mLogin:Ljava/lang/String;

.field private final mMainHandler:Landroid/os/Handler;

.field private mObservation:Lorg/inaturalist/android/BetterJSONObject;

.field private mOnIDAddedCb:Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

.field private mReadOnly:Z

.field private mTaxonId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/inaturalist/android/BetterJSONObject;Ljava/util/List;ILorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/inaturalist/android/BetterJSONObject;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/BetterJSONObject;",
            ">;I",
            "Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;",
            "Z)V"
        }
    .end annotation

    const v0, 0x7f0d0032

    .line 84
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 86
    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    .line 87
    iput-boolean p6, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mReadOnly:Z

    .line 88
    iput-object p3, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    .line 89
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mAgreeing:Ljava/util/ArrayList;

    .line 90
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mAgreeing:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object p3, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 p6, 0x0

    if-ge p2, p3, :cond_0

    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mAgreeing:Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    iput-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    .line 92
    iput p4, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mTaxonId:I

    .line 93
    iput-object p5, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mOnIDAddedCb:Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    .line 94
    new-instance p2, Lorg/inaturalist/android/ActivityHelper;

    iget-object p3, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 95
    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 97
    iget-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-string p3, "iNaturalistPreferences"

    invoke-virtual {p2, p3, p6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string p3, "username"

    const/4 p4, 0x0

    .line 98
    invoke-interface {p2, p3, p4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    .line 100
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/CommentsIdsAdapter;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mOnIDAddedCb:Lorg/inaturalist/android/CommentsIdsAdapter$OnIDAdded;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lorg/inaturalist/android/CommentsIdsAdapter;I)I
    .locals 0

    .line 54
    iput p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mTaxonId:I

    return p1
.end method

.method static synthetic access$500(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mAgreeing:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/CommentsIdsAdapter;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/CommentsIdsAdapter;)Lorg/inaturalist/android/BetterJSONObject;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    return-object p0
.end method

.method private copyToClipBoard(Ljava/lang/String;)V
    .locals 2

    .line 526
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 527
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 528
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 529
    invoke-static {p1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 530
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    goto :goto_0

    .line 532
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 533
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static formatIdDate(Landroid/content/Context;Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 10

    .line 473
    new-instance v0, Lorg/joda/time/Duration;

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/joda/time/Duration;-><init>(JJ)V

    .line 474
    invoke-virtual {v0}, Lorg/joda/time/Duration;->getStandardDays()J

    move-result-wide v1

    .line 475
    invoke-virtual {v0}, Lorg/joda/time/Duration;->getStandardHours()J

    move-result-wide v3

    .line 476
    invoke-virtual {v0}, Lorg/joda/time/Duration;->getStandardMinutes()J

    move-result-wide v5

    const/4 v0, 0x1

    const-wide/16 v7, 0x1e

    cmp-long v9, v1, v7

    if-gtz v9, :cond_3

    const-wide/16 v7, 0x1

    const/4 p1, 0x0

    cmp-long v9, v1, v7

    if-gez v9, :cond_1

    cmp-long v1, v3, v7

    if-gez v1, :cond_0

    const v1, 0x7f100119

    .line 482
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const v1, 0x7f100117

    .line 484
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-wide/16 v3, 0x7

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    const v3, 0x7f100116

    .line 487
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const v5, 0x7f10011b

    .line 489
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 492
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 493
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 494
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 495
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 498
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-le p0, v0, :cond_4

    const-string p0, "MM/dd/yy"

    goto :goto_0

    :cond_4
    const-string p0, "MMM d"

    .line 506
    :goto_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 507
    new-instance p0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addItemAtBeginning(Lorg/inaturalist/android/BetterJSONObject;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    move-object/from16 v9, p0

    move/from16 v0, p1

    .line 109
    iget-object v1, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 110
    iget-object v2, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const/4 v10, 0x0

    const v3, 0x7f0d0033

    move-object/from16 v4, p3

    .line 111
    invoke-virtual {v2, v3, v4, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 112
    iget-object v2, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lorg/inaturalist/android/BetterJSONObject;

    .line 114
    iget-object v2, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "agree_all_caps"

    const-string v4, "agree2"

    const v5, 0x7f0a0168

    invoke-virtual {v2, v11, v5, v3, v4}, Lorg/inaturalist/android/INaturalistApp;->setStringResourceForView(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f0a00c5

    .line 117
    :try_start_0
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    const v2, 0x7f0a0176

    .line 118
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0167

    .line 119
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a02aa

    .line 121
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const-string v2, "user"

    .line 122
    invoke-virtual {v12, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "login"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "updated_at"

    .line 123
    invoke-virtual {v12, v2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "created_at"

    .line 124
    invoke-virtual {v12, v2}, Lorg/inaturalist/android/BetterJSONObject;->getTimestamp(Ljava/lang/String;)Ljava/sql/Timestamp;

    move-result-object v2

    :cond_0
    const-string v3, "type"

    .line 126
    invoke-virtual {v12, v3}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "comment"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f1000dc

    goto :goto_0

    :cond_1
    const v3, 0x7f10018a

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v10

    iget-object v4, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    .line 127
    invoke-static {v4, v2}, Lorg/inaturalist/android/CommentsIdsAdapter;->formatIdDate(Landroid/content/Context;Ljava/sql/Timestamp;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v3, v6

    .line 126
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    new-instance v1, Lorg/inaturalist/android/CommentsIdsAdapter$1;

    invoke-direct {v1, v9, v12}, Lorg/inaturalist/android/CommentsIdsAdapter$1;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;Lorg/inaturalist/android/BetterJSONObject;)V

    const v2, 0x7f0a03d2

    .line 139
    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    const-string v2, "user"

    .line 140
    invoke-virtual {v12, v2}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "user_icon_url"

    const-string v4, "icon"

    .line 141
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v16, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    .line 144
    :goto_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x64

    if-eqz v16, :cond_3

    .line 148
    iget-object v1, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->fit()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f080131

    .line 152
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;

    invoke-direct {v2}, Lorg/inaturalist/android/UserActivitiesAdapter$CircleTransform;-><init>()V

    .line 153
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    new-instance v2, Lorg/inaturalist/android/CommentsIdsAdapter$2;

    invoke-direct {v2, v9}, Lorg/inaturalist/android/CommentsIdsAdapter$2;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;)V

    .line 154
    invoke-virtual {v1, v5, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    :goto_2
    const v1, 0x7f0a021d

    .line 170
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    const-string v1, "type"

    .line 171
    invoke-virtual {v12, v1}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "comment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v1, 0x7f0a01b7

    .line 172
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 174
    new-instance v10, Lorg/inaturalist/android/CommentsIdsAdapter$3;

    invoke-direct {v10, v9, v1, v12, v2}, Lorg/inaturalist/android/CommentsIdsAdapter$3;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;Landroid/view/View;Lorg/inaturalist/android/BetterJSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v0, 0x8

    if-eqz v3, :cond_4

    .line 217
    :try_start_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    new-instance v0, Lorg/inaturalist/android/CommentsIdsAdapter$4;

    move-object/from16 v17, v1

    move-object v1, v0

    move/from16 v18, v2

    move-object/from16 v2, p0

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object v9, v5

    move-object v5, v7

    move-object v6, v12

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    move-object/from16 v21, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lorg/inaturalist/android/CommentsIdsAdapter$4;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;Landroid/view/View;ZLjava/lang/String;Lorg/inaturalist/android/BetterJSONObject;Landroid/widget/ImageView;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v11

    move-object/from16 v9, p0

    goto/16 :goto_14

    :cond_4
    move-object/from16 v17, v1

    move-object v9, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object v7, v3

    :goto_3
    const-string v0, "type"

    .line 271
    invoke-virtual {v12, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf

    const/16 v2, 0xff

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 273
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v3, 0x8

    .line 274
    invoke-virtual {v14, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v8, v17

    .line 275
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz v7, :cond_5

    .line 276
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    :cond_5
    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "body"

    .line 279
    invoke-virtual {v12, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {v13, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 281
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 283
    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz v16, :cond_6

    .line 284
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_6
    move-object v5, v11

    move-object/from16 v2, v20

    const/16 v3, 0x8

    move-object/from16 v9, p0

    goto/16 :goto_13

    :cond_7
    move-object/from16 v8, v17

    const/4 v0, 0x0

    .line 288
    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const-string v0, "body"

    .line 289
    invoke-virtual {v12, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 291
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-static {v13, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 293
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v0, 0x0

    .line 295
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    :cond_8
    const/16 v0, 0x8

    .line 297
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v0, 0x7f0a0178

    .line 299
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "taxon"

    .line 300
    invoke-virtual {v12, v1}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, "default_photo"

    .line 301
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    const v4, 0x7f08027d

    if-eqz v3, :cond_a

    const-string v5, "image_url"

    const-string v6, "square_url"

    .line 303
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_6

    .line 305
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_6
    const v1, 0x7f0a0177

    .line 308
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    const v1, 0x7f0a017e

    .line 309
    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v9

    move-object/from16 v9, p0

    .line 311
    :try_start_2
    iget-object v3, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->getShowScientificNameFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "taxon"

    .line 313
    invoke-virtual {v12, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v10, v3}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 314
    iget-object v3, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-string v4, "taxon"

    invoke-virtual {v12, v4}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    :cond_b
    const-string v3, "taxon"

    .line 316
    invoke-virtual {v12, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v13, v3}, Lorg/inaturalist/android/TaxonUtils;->setTaxonScientificName(Landroid/widget/TextView;Lorg/json/JSONObject;)V

    .line 317
    iget-object v3, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-string v4, "taxon"

    invoke-virtual {v12, v4}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/inaturalist/android/TaxonUtils;->getTaxonName(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    const-string v3, "current"

    .line 320
    invoke-virtual {v12, v3}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 321
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_8

    .line 328
    :cond_c
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 329
    invoke-virtual {v13}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 330
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    if-eqz v16, :cond_e

    .line 331
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_9

    .line 323
    :cond_d
    :goto_8
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 324
    invoke-virtual {v13}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 325
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 326
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    :cond_e
    :goto_9
    const v0, 0x7f0a0166

    .line 334
    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 335
    new-instance v6, Lorg/inaturalist/android/CommentsIdsAdapter$5;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object v4, v12

    move-object v5, v8

    move-object/from16 v22, v11

    move-object v11, v6

    move/from16 v6, p1

    :try_start_3
    invoke-direct/range {v1 .. v6}, Lorg/inaturalist/android/CommentsIdsAdapter$5;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;Ljava/lang/String;Lorg/inaturalist/android/BetterJSONObject;Landroid/view/View;I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x8

    .line 350
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v1, "taxon_id"

    .line 353
    invoke-virtual {v12, v1}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, p1

    const/4 v2, 0x0

    const/16 v3, 0x8

    :goto_a
    if-ge v2, v0, :cond_10

    .line 356
    iget-object v4, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/BetterJSONObject;

    const-string v5, "taxon_id"

    .line 357
    invoke-virtual {v4, v5}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 358
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_f

    const/4 v2, 0x1

    goto :goto_b

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_b
    const/4 v4, 0x0

    .line 365
    :goto_c
    iget-object v5, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_14

    .line 366
    iget-object v5, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    if-nez v5, :cond_11

    goto :goto_e

    :cond_11
    if-ne v4, v0, :cond_12

    goto :goto_d

    .line 369
    :cond_12
    iget-object v5, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mItems:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/inaturalist/android/BetterJSONObject;

    const-string v6, "user"

    .line 371
    invoke-virtual {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v11, "login"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v11, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string v6, "taxon_id"

    .line 372
    invoke-virtual {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 373
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v1, :cond_13

    const-string v6, "current"

    invoke-virtual {v5, v6}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v1, 0x0

    goto :goto_f

    :cond_13
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_14
    :goto_e
    const/4 v1, 0x1

    :goto_f
    if-nez v2, :cond_15

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 385
    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_10

    .line 388
    :cond_15
    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_10
    if-eqz v7, :cond_16

    .line 391
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 393
    :cond_16
    iget-object v1, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v1, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    move-object/from16 v2, v20

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 394
    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz v7, :cond_17

    const/4 v1, 0x0

    .line 395
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    if-eqz v17, :cond_18

    .line 397
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 399
    :cond_18
    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_11

    :cond_19
    move-object/from16 v2, v20

    .line 403
    :cond_1a
    :goto_11
    iget-object v1, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mAgreeing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v1, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mAgreeing:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1b

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_12

    :cond_1b
    const/4 v1, 0x0

    goto :goto_12

    :cond_1c
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 408
    :goto_12
    iget-object v5, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    if-nez v5, :cond_1d

    .line 410
    invoke-virtual {v15, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 413
    :cond_1d
    new-instance v5, Lorg/inaturalist/android/CommentsIdsAdapter$6;

    invoke-direct {v5, v9, v0}, Lorg/inaturalist/android/CommentsIdsAdapter$6;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;I)V

    .line 424
    invoke-virtual {v14, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "taxon"

    .line 429
    invoke-virtual {v12, v0}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "is_active"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const v4, 0x7f0a0388

    move-object/from16 v5, v22

    .line 430
    :try_start_4
    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    const/16 v1, 0x8

    .line 431
    :cond_1e
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-nez v0, :cond_1f

    .line 434
    invoke-virtual {v13}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 435
    invoke-virtual {v13}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 438
    :cond_1f
    new-instance v0, Lorg/inaturalist/android/CommentsIdsAdapter$7;

    invoke-direct {v0, v9, v12}, Lorg/inaturalist/android/CommentsIdsAdapter$7;-><init>(Lorg/inaturalist/android/CommentsIdsAdapter;Lorg/inaturalist/android/BetterJSONObject;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_13
    if-eqz v7, :cond_21

    .line 458
    iget-object v0, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, v9, Lorg/inaturalist/android/CommentsIdsAdapter;->mLogin:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 459
    :cond_20
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_15

    :catch_1
    move-exception v0

    goto :goto_14

    :catch_2
    move-exception v0

    move-object/from16 v5, v22

    goto :goto_14

    :catch_3
    move-exception v0

    move-object v5, v11

    .line 464
    :goto_14
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 467
    :cond_21
    :goto_15
    invoke-virtual {v5, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v5
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    const-string v0, "type"

    .line 514
    invoke-virtual {p1, v0}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "identification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    const-class v2, Lorg/inaturalist/android/TaxonActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 519
    sget-object v1, Lorg/inaturalist/android/TaxonActivity;->TAXON:Ljava/lang/String;

    new-instance v2, Lorg/inaturalist/android/BetterJSONObject;

    const-string v3, "taxon"

    invoke-virtual {p1, v3}, Lorg/inaturalist/android/BetterJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 520
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->DOWNLOAD_TAXON:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 521
    sget-object p1, Lorg/inaturalist/android/TaxonActivity;->OBSERVATION:Ljava/lang/String;

    iget-object v1, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mObservation:Lorg/inaturalist/android/BetterJSONObject;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 522
    iget-object p1, p0, Lorg/inaturalist/android/CommentsIdsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
