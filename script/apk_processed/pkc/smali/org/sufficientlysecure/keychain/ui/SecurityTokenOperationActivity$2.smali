.class Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;
.super Ljava/lang/Object;
.source "SecurityTokenOperationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 129
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;---><init>(Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 132
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->setResult(I)V

    .line 133
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity;->finish()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SecurityTokenOperationActivity$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
