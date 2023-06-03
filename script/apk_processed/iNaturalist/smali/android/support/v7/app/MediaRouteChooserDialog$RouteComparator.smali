.class final Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;
.super Ljava/lang/Object;
.source "MediaRouteChooserDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RouteComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/support/v7/media/MediaRouter$RouteInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_USAGE_SCORE:F = 0.1f

.field private static final PREF_ROUTE_IDS:Ljava/lang/String; = "android.support.v7.app.MediaRouteChooserDialog_route_ids"

.field private static final PREF_USAGE_SCORE_PREFIX:Ljava/lang/String; = "android.support.v7.app.MediaRouteChooserDialog_route_usage_score_"

.field private static final USAGE_SCORE_DECAY_FACTOR:F = 0.95f

.field private static sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;

.field private final mRouteUsageScoreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    .line 412
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;Ljava/util/List;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->loadRouteUsageScores(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400()Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;
    .locals 1

    .line 390
    sget-object v0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    return-object v0
.end method

.method static synthetic access$800(Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;Ljava/lang/String;)V
    .locals 0

    .line 390
    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->storeRouteUsageScores(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;
    .locals 1

    .line 404
    sget-object v0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    if-nez v0, :cond_0

    .line 405
    new-instance v0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    invoke-direct {v0, p0}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    .line 407
    :cond_0
    sget-object p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->sInstance:Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;

    return-object p0
.end method

.method private loadRouteUsageScores(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 437
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 438
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.support.v7.app.MediaRouteChooserDialog_route_usage_score_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 439
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private storeRouteUsageScores(Ljava/lang/String;)V
    .locals 8

    .line 446
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "android.support.v7.app.MediaRouteChooserDialog_route_ids"

    const-string v4, ""

    .line 448
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 453
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.support.v7.app.MediaRouteChooserDialog_route_usage_score_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 459
    iget-object v5, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v5

    const v6, 0x3f733333    # 0.95f

    mul-float v5, v5, v6

    .line 461
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    :cond_1
    const v6, 0x3dcccccd    # 0.1f

    cmpg-float v6, v5, v6

    if-gez v6, :cond_2

    .line 465
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 468
    :cond_2
    iget-object v6, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 470
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    const/16 v4, 0x2c

    .line 471
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string p1, "android.support.v7.app.MediaRouteChooserDialog_route_ids"

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouter$RouteInfo;)I
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-nez p2, :cond_2

    return v1

    .line 422
    :cond_2
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 424
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 426
    :cond_3
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->mRouteUsageScoreMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-nez v4, :cond_4

    .line 428
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 430
    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 431
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 433
    :cond_6
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 390
    check-cast p1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast p2, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/MediaRouteChooserDialog$RouteComparator;->compare(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/MediaRouter$RouteInfo;)I

    move-result p1

    return p1
.end method
