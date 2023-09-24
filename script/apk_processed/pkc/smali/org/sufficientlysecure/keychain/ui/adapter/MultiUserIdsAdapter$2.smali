.class Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;
.super Ljava/lang/Object;
.source "MultiUserIdsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

.field final synthetic val$vCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;Landroid/widget/CheckBox;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 153
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;->this$0:Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;->val$vCheckBox:Landroid/widget/CheckBox;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;---><init>(Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter;Landroid/widget/CheckBox;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 156
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;->val$vCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/adapter/MultiUserIdsAdapter$2;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
