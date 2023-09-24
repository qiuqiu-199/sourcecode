.class Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;
.super Ljava/lang/Object;
.source "SafeSlingerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 93
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;---><init>(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 96
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->access$100(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)J

    move-result-wide v0

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;->this$0:Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->access$000(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;)I

    move-result v2

    invoke-static {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;->access$200(Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity;JI)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SafeSlingerActivity$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
