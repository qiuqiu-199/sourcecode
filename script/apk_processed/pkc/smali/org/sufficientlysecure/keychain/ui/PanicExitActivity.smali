.class public Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;
.super Landroid/app/Activity;
.source "PanicExitActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 28
    invoke-direct {v0}, Landroid/app/Activity;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static exitAndRemoveFromRecentApps(Landroid/app/Activity;)V
    .locals 5

    move-object/16 v2, p0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x10818000

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;--->exitAndRemoveFromRecentApps(Landroid/app/Activity;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
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

    .line 33
    invoke-super {v1, v2}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;--->onCreate(Landroid/os/Bundle;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v2, v0, :cond_0

    .line 36
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;->finishAndRemoveTask()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/PanicExitActivity;->finish()V

    :goto_0
    const/4 v2, 0x0

    .line 41
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void
.end method
