.class final synthetic Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

.field private final arg$2:Lorg/sufficientlysecure/keychain/util/Preferences;

.field private final arg$3:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;->arg$1:Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;->arg$2:Lorg/sufficientlysecure/keychain/util/Preferences;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;->arg$3:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;---><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move/16 v5, p2

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;->arg$1:Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;->arg$2:Lorg/sufficientlysecure/keychain/util/Preferences;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;->arg$3:Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;

    invoke-virtual {v0, v1, v2, v4, v5}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->lambda$maybeAskForAnalytics$1$AnalyticsConsentRequester(Lorg/sufficientlysecure/keychain/util/Preferences;Lorg/sufficientlysecure/keychain/analytics/AnalyticsManager;Landroid/content/DialogInterface;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$1;--->onClick(Landroid/content/DialogInterface;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
