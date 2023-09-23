.class final synthetic Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/Notify$ActionListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;---><init>(Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAction()V
    .locals 4

    move-object/16 v1, p0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;->arg$1:Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester;->bridge$lambda$0$AnalyticsConsentRequester()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/analytics/AnalyticsConsentRequester$$Lambda$3;--->onAction()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
