.class Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;
.super Ljava/lang/Object;
.source "LogDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 35
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;---><init>(Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 39
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;->this$0:Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity;->finish()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/LogDisplayActivity$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
