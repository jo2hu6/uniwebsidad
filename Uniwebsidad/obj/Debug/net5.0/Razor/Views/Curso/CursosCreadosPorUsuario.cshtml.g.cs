#pragma checksum "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "119b5e06309cd1aeb4e7455eb8fc59fcc35b79f9"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Curso_CursosCreadosPorUsuario), @"mvc.1.0.view", @"/Views/Curso/CursosCreadosPorUsuario.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\_ViewImports.cshtml"
using Uniwebsidad;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\_ViewImports.cshtml"
using Uniwebsidad.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"119b5e06309cd1aeb4e7455eb8fc59fcc35b79f9", @"/Views/Curso/CursosCreadosPorUsuario.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"56b9a026bb969f9b7752353c67391ac4d670d188", @"/Views/_ViewImports.cshtml")]
    public class Views_Curso_CursosCreadosPorUsuario : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral(@"
<style>
    img .zoom {
        width: 90%;
    }

        img .zoom:hover {
            width: 95%;
        }

    .active, .collapsible:hover {
        background-color: #555;
    }

    h4 .card-title:hover {
        text-decoration: none;
        width: 50%;
    }

    .content {
        padding: 0 18px;
        display: none;
        overflow: hidden;
        background-color: #f1f1f1;
    }

    .zoom {
        transition: transform .2s;
    }

        .zoom:hover {
            transform: scale(1.1);
        }
</style>

<h1 class=""p-3 text-white text-center"" style=""margin-bottom:0px"">Cursos creados por ");
#nullable restore
#line 36 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
                                                                               Write(ViewBag.Usuario);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h1>\n<br />\n\n<div class=\"p-3\">\n    <a class=\"btn btn-lg btn-secondary btn-block\" href=\"/Curso/CrearCursoInterface\"><i class=\"fas fa-plus-square\"></i>  Crear Curso</a>\n</div>\n\n\n<div class=\"row\">\n    <div class=\"container\">\n        <div class=\"card-deck\">\n");
#nullable restore
#line 47 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
             if (ViewBag.Cantidad != 0)
            {
                

#line default
#line hidden
#nullable disable
#nullable restore
#line 49 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
                 foreach (var item in @ViewBag.CursosCreadosPorUsuario)
                {

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                    <div class=""col-md-4"">
                        <div class=""card text-white bg-secondary mb-3"" style=""max-width: 20rem;"">
                            <img class="" card-img-top zoom"" src=""https://strategyco.es/wp-content/uploads/2020/10/Imagen-BlogStrategyco-202010A-JB.jpg"" />
                            <div class=""card-header text-center"">
                                <a");
            BeginWriteAttribute("href", " href=\"", 1428, "\"", 1466, 2);
            WriteAttributeValue("", 1435, "/Curso/DetalleCurso?Id=", 1435, 23, true);
#nullable restore
#line 55 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
WriteAttributeValue("", 1458, item.Id, 1458, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("><h4 class=\"text-white\">");
#nullable restore
#line 55 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
                                                                                            Write(item.Nombre);

#line default
#line hidden
#nullable disable
            WriteLiteral("</h4></a>\n                            </div>\n                            <div class=\"card-body\">\n                                <label>");
#nullable restore
#line 58 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
                                  Write(ViewBag.Categorias[@item.Id]);

#line default
#line hidden
#nullable disable
            WriteLiteral("</label>\n                            </div>\n                            <div class=\"card-footer text-center\">\n                                <a class=\"btn btn-info\"");
            BeginWriteAttribute("href", " href=\"", 1833, "\"", 1878, 2);
            WriteAttributeValue("", 1840, "/Curso/AgregarVideoAlCurso?Id=", 1840, 30, true);
#nullable restore
#line 61 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
WriteAttributeValue("", 1870, item.Id, 1870, 8, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral("><i class=\"fas fa-video\"></i> Agregar video</a>\n                            </div>\n                        </div>\n                    </div>\n");
#nullable restore
#line 65 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
                }

#line default
#line hidden
#nullable disable
#nullable restore
#line 65 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
                 
            }

#line default
#line hidden
#nullable disable
            WriteLiteral("\n        </div>\n\n    </div>\n</div>\n\n\n");
#nullable restore
#line 74 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
 if (ViewBag.Cantidad == 0)
{

#line default
#line hidden
#nullable disable
            WriteLiteral(@"    <h2 class=""text-white text-center"" style=""position:absolute;left:50%;top:50%;transform: translateX(-50%) translateY(-50%)"">No has creado ningun curso</h2>
    <h5 class=""text-white text-center"" style=""position:absolute;left:50%;top:53%;transform: translateX(-50%) translateY(-50%)"">Crea tus cursos presionando ""Crear Curso""</h5>
");
#nullable restore
#line 78 "D:\JOSUE\UPN\9no ciclo\CALIDAD Y PRUEBAS DE SOFTWARE\uniWEBsidad-master\Uniwebsidad\Views\Curso\CursosCreadosPorUsuario.cshtml"
}

#line default
#line hidden
#nullable disable
            WriteLiteral("\n<a href=\"/Curso/Index\" class=\"btn btn-info\"><i class=\"fas fa-long-arrow-alt-left\"></i> Regresar</a>\n");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591