.class Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->initialize(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 40
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;->this$0:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;---><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivityDestroyed(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivityPaused(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 52
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;->this$0:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->access$000(Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)Lorg/piwik/sdk/Tracker;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    invoke-static {}, Lorg/piwik/sdk/extra/TrackHelper;->track()Lorg/piwik/sdk/extra/TrackHelper;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/piwik/sdk/extra/TrackHelper;->screen(Ljava/lang/String;)Lorg/piwik/sdk/extra/TrackHelper$Screen;

    move-result-object v2

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;->this$0:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;->access$000(Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)Lorg/piwik/sdk/Tracker;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/piwik/sdk/extra/TrackHelper$Screen;->with(Lorg/piwik/sdk/Tracker;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivityResumed(Landroid/app/Activity;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivityStarted(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager$1;--->onActivityStopped(Landroid/app/Activity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
