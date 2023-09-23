.class public final Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "AsyncTaskLiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 97
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    .line 98
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;---><init>(Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;--->deliverSelfNotifications()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onChange(Z)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    .line 108
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;->this$0:Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData;->updateDataInBackground()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/keyview/loader/AsyncTaskLiveData$ForceLoadContentObserver;--->onChange(Z)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
