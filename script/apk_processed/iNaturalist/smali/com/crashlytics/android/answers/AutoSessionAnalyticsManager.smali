.class Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;
.super Lcom/crashlytics/android/answers/SessionAnalyticsManager;
.source "AutoSessionAnalyticsManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final EXECUTOR_SERVICE:Ljava/lang/String; = "Crashlytics Trace Manager"


# instance fields
.field private final activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final application:Landroid/app/Application;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;Landroid/app/Application;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;)V

    .line 24
    new-instance p1, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;

    invoke-direct {p1, p0}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager$1;-><init>(Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;)V

    iput-object p1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 77
    iput-object p3, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->application:Landroid/app/Application;

    .line 78
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "Registering activity lifecycle callbacks for session analytics."

    invoke-static {p1, p2}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p3, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public static build(Landroid/app/Application;Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;
    .locals 2

    const-string v0, "Crashlytics Trace Manager"

    .line 65
    invoke-static {v0}, Lio/fabric/sdk/android/services/common/ExecutorUtils;->buildSingleThreadScheduledExecutorService(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/crashlytics/android/answers/EnabledSessionAnalyticsManagerStrategy;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Lio/fabric/sdk/android/services/network/HttpRequestFactory;)V

    .line 69
    new-instance p3, Lcom/crashlytics/android/answers/SessionEventsHandler;

    invoke-direct {p3, p0, v1, p2, v0}, Lcom/crashlytics/android/answers/SessionEventsHandler;-><init>(Landroid/content/Context;Lio/fabric/sdk/android/services/events/EventsStrategy;Lcom/crashlytics/android/answers/SessionAnalyticsFilesManager;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 71
    new-instance p2, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;

    invoke-direct {p2, p1, p3, p0}, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;-><init>(Lcom/crashlytics/android/answers/SessionEventMetadata;Lcom/crashlytics/android/answers/SessionEventsHandler;Landroid/app/Application;)V

    return-object p2
.end method


# virtual methods
.method public disable()V
    .locals 2

    .line 85
    invoke-static {}, Lcom/crashlytics/android/answers/Answers;->getInstance()Lcom/crashlytics/android/answers/Answers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/crashlytics/android/answers/Answers;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Unregistering activity lifecycle callbacks for session analytics"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/common/CommonUtils;->logControlled(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/crashlytics/android/answers/AutoSessionAnalyticsManager;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 88
    invoke-super {p0}, Lcom/crashlytics/android/answers/SessionAnalyticsManager;->disable()V

    return-void
.end method
