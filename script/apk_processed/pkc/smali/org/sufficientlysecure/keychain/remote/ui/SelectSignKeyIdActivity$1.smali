.class Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;
.super Ljava/lang/Object;
.source "SelectSignKeyIdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 53
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 56
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->setResult(I)V

    .line 57
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
