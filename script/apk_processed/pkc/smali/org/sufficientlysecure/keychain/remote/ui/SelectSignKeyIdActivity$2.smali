.class Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;
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

    .line 62
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 65
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)Landroid/content/Intent;

    move-result-object v4

    const-string v0, "sign_key_id"

    const-wide/16 v1, 0x0

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 67
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v4, v1, v0}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->setResult(ILandroid/content/Intent;)V

    .line 68
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity;->finish()V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/SelectSignKeyIdActivity$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
