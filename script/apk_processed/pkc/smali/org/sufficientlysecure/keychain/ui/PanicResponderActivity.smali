.class public Lorg/sufficientlysecure/keychain/ui/PanicResponderActivity;
.super Landroid/app/Activity;
.source "PanicResponderActivity.java"


# static fields
.field public static final PANIC_TRIGGER_ACTION:Ljava/lang/String; = "info.guardianproject.panic.action.TRIGGER"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 30
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/PanicResponderActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 37
    invoke-super {v1, v2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PanicResponderActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PanicResponderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "info.guardianproject.panic.action.TRIGGER"

    .line 40
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->clearCachedPassphrases(Landroid/content/Context;)V

    .line 42
    invoke-static {v1}, Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;->exitAndRemoveFromRecentApps(Landroid/app/Activity;)V

    .line 45
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v2, v0, :cond_1

    .line 46
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PanicResponderActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PanicResponderActivity;->finish()V

    :goto_0
    return-void
.end method
