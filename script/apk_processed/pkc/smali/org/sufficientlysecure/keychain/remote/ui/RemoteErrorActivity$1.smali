.class Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;
.super Ljava/lang/Object;
.source "RemoteErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 55
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 59
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->setResult(I)V

    .line 60
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/RemoteErrorActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
