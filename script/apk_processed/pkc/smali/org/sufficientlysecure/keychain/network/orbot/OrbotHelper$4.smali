.class final Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;
.super Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;
.source "OrbotHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->bestPossibleOrbotStart(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 397
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$SilentStartManager;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;---><init>(Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;Landroid/app/Activity;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onOrbotStarted()V
    .locals 4

    move-object/16 v1, p0

    .line 401
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;->val$dialogActions:Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$DialogActions;->onOrbotStarted()V

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;--->onOrbotStarted()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected onSilentStartDisabled()V
    .locals 4

    move-object/16 v1, p0

    .line 406
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper;->requestShowOrbotStart(Landroid/app/Activity;)Z

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/network/orbot/OrbotHelper$4;--->onSilentStartDisabled()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
